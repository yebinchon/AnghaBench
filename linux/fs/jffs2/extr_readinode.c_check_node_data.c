
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_tmp_dnode_info {int csize; int data_crc; int partial_crc; TYPE_1__* fn; } ;
struct jffs2_sb_info {int wbuf_pagesize; size_t sector_size; int used_size; int unchecked_size; int mtd; int erase_completion_lock; struct jffs2_eraseblock* blocks; } ;
struct jffs2_raw_node_ref {size_t flash_offset; } ;
struct jffs2_raw_inode {int dummy; } ;
struct jffs2_eraseblock {int used_size; int unchecked_size; } ;
struct TYPE_2__ {struct jffs2_raw_node_ref* raw; } ;


 int BUG_ON (int) ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int JFFS2_ERROR (char*,int,size_t,int) ;
 int JFFS2_NOTICE (char*,int,int,int) ;
 int JFFS2_WARNING (char*,int,...) ;
 size_t REF_PRISTINE ;
 int crc32 (int ,unsigned char*,int) ;
 int dbg_readinode (char*,int,int,int,...) ;
 int jffs2_dbg_acct_paranoia_check_nolock (struct jffs2_sb_info*,struct jffs2_eraseblock*) ;
 int jffs2_flash_read (struct jffs2_sb_info*,int,int,size_t*,unsigned char*) ;
 scalar_t__ jffs2_is_writebuffered (struct jffs2_sb_info*) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int mtd_point (int ,int,int,size_t*,void**,int *) ;
 int mtd_unpoint (int ,int,int) ;
 int ref_offset (struct jffs2_raw_node_ref*) ;
 int ref_totlen (struct jffs2_sb_info*,struct jffs2_eraseblock*,struct jffs2_raw_node_ref*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_node_data(struct jffs2_sb_info *c, struct jffs2_tmp_dnode_info *tn)
{
 struct jffs2_raw_node_ref *ref = tn->fn->raw;
 int err = 0, pointed = 0;
 struct jffs2_eraseblock *jeb;
 unsigned char *buffer;
 uint32_t crc, ofs, len;
 size_t retlen;

 BUG_ON(tn->csize == 0);


 ofs = ref_offset(ref) + sizeof(struct jffs2_raw_inode);
 len = tn->csize;

 if (jffs2_is_writebuffered(c)) {
  int adj = ofs % c->wbuf_pagesize;
  if (likely(adj))
   adj = c->wbuf_pagesize - adj;

  if (adj >= tn->csize) {
   dbg_readinode("no need to check node at %#08x, data length %u, data starts at %#08x - it has already been checked.\n",
          ref_offset(ref), tn->csize, ofs);
   goto adj_acc;
  }

  ofs += adj;
  len -= adj;
 }

 dbg_readinode("check node at %#08x, data length %u, partial CRC %#08x, correct CRC %#08x, data starts at %#08x, start checking from %#08x - %u bytes.\n",
  ref_offset(ref), tn->csize, tn->partial_crc, tn->data_crc, ofs - len, ofs, len);




 err = mtd_point(c->mtd, ofs, len, &retlen, (void **)&buffer, ((void*)0));
 if (!err && retlen < len) {
  JFFS2_WARNING("MTD point returned len too short: %zu instead of %u.\n", retlen, tn->csize);
  mtd_unpoint(c->mtd, ofs, retlen);
 } else if (err) {
  if (err != -EOPNOTSUPP)
   JFFS2_WARNING("MTD point failed: error code %d.\n", err);
 } else
  pointed = 1;


 if (!pointed) {
  buffer = kmalloc(len, GFP_KERNEL);
  if (unlikely(!buffer))
   return -ENOMEM;



  err = jffs2_flash_read(c, ofs, len, &retlen, buffer);
  if (err) {
   JFFS2_ERROR("can not read %d bytes from 0x%08x, error code: %d.\n", len, ofs, err);
   goto free_out;
  }

  if (retlen != len) {
   JFFS2_ERROR("short read at %#08x: %zd instead of %d.\n", ofs, retlen, len);
   err = -EIO;
   goto free_out;
  }
 }


 crc = crc32(tn->partial_crc, buffer, len);
 if(!pointed)
  kfree(buffer);

 else
  mtd_unpoint(c->mtd, ofs, len);


 if (crc != tn->data_crc) {
  JFFS2_NOTICE("wrong data CRC in data node at 0x%08x: read %#08x, calculated %#08x.\n",
        ref_offset(ref), tn->data_crc, crc);
  return 1;
 }

adj_acc:
 jeb = &c->blocks[ref->flash_offset / c->sector_size];
 len = ref_totlen(c, jeb, ref);




 ref->flash_offset |= REF_PRISTINE;




 spin_lock(&c->erase_completion_lock);
 jeb->used_size += len;
 jeb->unchecked_size -= len;
 c->used_size += len;
 c->unchecked_size -= len;
 jffs2_dbg_acct_paranoia_check_nolock(c, jeb);
 spin_unlock(&c->erase_completion_lock);

 return 0;

free_out:
 if(!pointed)
  kfree(buffer);

 else
  mtd_unpoint(c->mtd, ofs, len);

 return err;
}
