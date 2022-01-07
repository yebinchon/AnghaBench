
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int nodetype; int hdr_crc; } ;
struct TYPE_5__ {int nsize; int name_crc; union jffs2_node_union* name; int node_crc; } ;
struct TYPE_4__ {int data_crc; int csize; union jffs2_node_union* data; int dsize; int node_crc; } ;
union jffs2_node_union {TYPE_3__ u; TYPE_2__ d; TYPE_1__ i; } ;
typedef scalar_t__ uint32_t ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {scalar_t__ sector_size; struct jffs2_eraseblock* blocks; int gcblock; } ;
struct jffs2_raw_node_ref {int dummy; } ;
struct jffs2_raw_inode {int dummy; } ;
struct jffs2_inode_cache {int dummy; } ;
struct jffs2_eraseblock {int dummy; } ;


 int EBADFD ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ JFFS2_MIN_DATA_LEN ;


 scalar_t__ REF_OBSOLETE ;
 scalar_t__ REF_PRISTINE ;
 scalar_t__ crc32 (int ,union jffs2_node_union*,int) ;
 int je16_to_cpu (int ) ;
 scalar_t__ je32_to_cpu (int ) ;
 int jffs2_add_physical_node_ref (struct jffs2_sb_info*,scalar_t__,scalar_t__,struct jffs2_inode_cache*) ;
 int jffs2_dbg (int,char*,...) ;
 int jffs2_dbg_acct_paranoia_check (struct jffs2_sb_info*,struct jffs2_eraseblock*) ;
 int jffs2_dbg_acct_sanity_check (struct jffs2_sb_info*,struct jffs2_eraseblock*) ;
 int jffs2_flash_read (struct jffs2_sb_info*,int,scalar_t__,size_t*,char*) ;
 int jffs2_flash_write (struct jffs2_sb_info*,scalar_t__,scalar_t__,size_t*,char*) ;
 int jffs2_mark_node_obsolete (struct jffs2_sb_info*,struct jffs2_raw_node_ref*) ;
 int jffs2_reserve_space_gc (struct jffs2_sb_info*,scalar_t__,scalar_t__*,scalar_t__) ;
 int kfree (union jffs2_node_union*) ;
 union jffs2_node_union* kmalloc (scalar_t__,int ) ;
 int pr_notice (char*,scalar_t__,...) ;
 int pr_warn (char*,int,...) ;
 int ref_offset (struct jffs2_raw_node_ref*) ;
 scalar_t__ ref_totlen (struct jffs2_sb_info*,int ,struct jffs2_raw_node_ref*) ;
 int strnlen (union jffs2_node_union*,int) ;
 scalar_t__ write_ofs (struct jffs2_sb_info*) ;

__attribute__((used)) static int jffs2_garbage_collect_pristine(struct jffs2_sb_info *c,
       struct jffs2_inode_cache *ic,
       struct jffs2_raw_node_ref *raw)
{
 union jffs2_node_union *node;
 size_t retlen;
 int ret;
 uint32_t phys_ofs, alloclen;
 uint32_t crc, rawlen;
 int retried = 0;

 jffs2_dbg(1, "Going to GC REF_PRISTINE node at 0x%08x\n",
    ref_offset(raw));

 alloclen = rawlen = ref_totlen(c, c->gcblock, raw);




 if (ic && alloclen > sizeof(struct jffs2_raw_inode) + JFFS2_MIN_DATA_LEN)
  alloclen = sizeof(struct jffs2_raw_inode) + JFFS2_MIN_DATA_LEN;

 ret = jffs2_reserve_space_gc(c, alloclen, &alloclen, rawlen);


 if (ret)
  return ret;

 if (alloclen < rawlen) {

  return -EBADFD;
 }

 node = kmalloc(rawlen, GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 ret = jffs2_flash_read(c, ref_offset(raw), rawlen, &retlen, (char *)node);
 if (!ret && retlen != rawlen)
  ret = -EIO;
 if (ret)
  goto out_node;

 crc = crc32(0, node, sizeof(struct jffs2_unknown_node)-4);
 if (je32_to_cpu(node->u.hdr_crc) != crc) {
  pr_warn("Header CRC failed on REF_PRISTINE node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
   ref_offset(raw), je32_to_cpu(node->u.hdr_crc), crc);
  goto bail;
 }

 switch(je16_to_cpu(node->u.nodetype)) {
 case 128:
  crc = crc32(0, node, sizeof(node->i)-8);
  if (je32_to_cpu(node->i.node_crc) != crc) {
   pr_warn("Node CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
    ref_offset(raw), je32_to_cpu(node->i.node_crc),
    crc);
   goto bail;
  }

  if (je32_to_cpu(node->i.dsize)) {
   crc = crc32(0, node->i.data, je32_to_cpu(node->i.csize));
   if (je32_to_cpu(node->i.data_crc) != crc) {
    pr_warn("Data CRC failed on REF_PRISTINE data node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
     ref_offset(raw),
     je32_to_cpu(node->i.data_crc), crc);
    goto bail;
   }
  }
  break;

 case 129:
  crc = crc32(0, node, sizeof(node->d)-8);
  if (je32_to_cpu(node->d.node_crc) != crc) {
   pr_warn("Node CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
    ref_offset(raw),
    je32_to_cpu(node->d.node_crc), crc);
   goto bail;
  }

  if (strnlen(node->d.name, node->d.nsize) != node->d.nsize) {
   pr_warn("Name in dirent node at 0x%08x contains zeroes\n",
    ref_offset(raw));
   goto bail;
  }

  if (node->d.nsize) {
   crc = crc32(0, node->d.name, node->d.nsize);
   if (je32_to_cpu(node->d.name_crc) != crc) {
    pr_warn("Name CRC failed on REF_PRISTINE dirent node at 0x%08x: Read 0x%08x, calculated 0x%08x\n",
     ref_offset(raw),
     je32_to_cpu(node->d.name_crc), crc);
    goto bail;
   }
  }
  break;
 default:

  if (ic) {
   pr_warn("Unknown node type for REF_PRISTINE node at 0x%08x: 0x%04x\n",
    ref_offset(raw), je16_to_cpu(node->u.nodetype));
   goto bail;
  }
 }


 retry:
 phys_ofs = write_ofs(c);

 ret = jffs2_flash_write(c, phys_ofs, rawlen, &retlen, (char *)node);

 if (ret || (retlen != rawlen)) {
  pr_notice("Write of %d bytes at 0x%08x failed. returned %d, retlen %zd\n",
     rawlen, phys_ofs, ret, retlen);
  if (retlen) {
   jffs2_add_physical_node_ref(c, phys_ofs | REF_OBSOLETE, rawlen, ((void*)0));
  } else {
   pr_notice("Not marking the space at 0x%08x as dirty because the flash driver returned retlen zero\n",
      phys_ofs);
  }
  if (!retried) {

   uint32_t dummy;
   struct jffs2_eraseblock *jeb = &c->blocks[phys_ofs / c->sector_size];

   retried = 1;

   jffs2_dbg(1, "Retrying failed write of REF_PRISTINE node.\n");

   jffs2_dbg_acct_sanity_check(c,jeb);
   jffs2_dbg_acct_paranoia_check(c, jeb);

   ret = jffs2_reserve_space_gc(c, rawlen, &dummy, rawlen);



   if (!ret) {
    jffs2_dbg(1, "Allocated space at 0x%08x to retry failed write.\n",
       phys_ofs);

    jffs2_dbg_acct_sanity_check(c,jeb);
    jffs2_dbg_acct_paranoia_check(c, jeb);

    goto retry;
   }
   jffs2_dbg(1, "Failed to allocate space to retry failed write: %d!\n",
      ret);
  }

  if (!ret)
   ret = -EIO;
  goto out_node;
 }
 jffs2_add_physical_node_ref(c, phys_ofs | REF_PRISTINE, rawlen, ic);

 jffs2_mark_node_obsolete(c, raw);
 jffs2_dbg(1, "WHEEE! GC REF_PRISTINE node at 0x%08x succeeded\n",
    ref_offset(raw));

 out_node:
 kfree(node);
 return ret;
 bail:
 ret = -EBADFD;
 goto out_node;
}
