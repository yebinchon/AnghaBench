
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ubifs_info {int leb_cnt; int leb_size; scalar_t__ no_chk_data_crc; int remounting_rw; int mounting; TYPE_1__* ranges; } ;
struct ubifs_ch {int node_type; int crc; int len; int magic; } ;
struct TYPE_2__ {int max_len; int len; int min_len; } ;


 int EINVAL ;
 int EUCLEAN ;
 int UBIFS_CRC32_INIT ;
 int UBIFS_DATA_NODE ;
 scalar_t__ UBIFS_NODE_MAGIC ;
 int UBIFS_NODE_TYPES_CNT ;
 scalar_t__ crc32 (int ,void const*,int) ;
 int dump_stack () ;
 void* le32_to_cpu (int ) ;
 int ubifs_assert (struct ubifs_info const*,int) ;
 int ubifs_dump_node (struct ubifs_info const*,void const*) ;
 int ubifs_err (struct ubifs_info const*,char*,int,...) ;

int ubifs_check_node(const struct ubifs_info *c, const void *buf, int lnum,
       int offs, int quiet, int must_chk_crc)
{
 int err = -EINVAL, type, node_len;
 uint32_t crc, node_crc, magic;
 const struct ubifs_ch *ch = buf;

 ubifs_assert(c, lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
 ubifs_assert(c, !(offs & 7) && offs < c->leb_size);

 magic = le32_to_cpu(ch->magic);
 if (magic != UBIFS_NODE_MAGIC) {
  if (!quiet)
   ubifs_err(c, "bad magic %#08x, expected %#08x",
      magic, UBIFS_NODE_MAGIC);
  err = -EUCLEAN;
  goto out;
 }

 type = ch->node_type;
 if (type < 0 || type >= UBIFS_NODE_TYPES_CNT) {
  if (!quiet)
   ubifs_err(c, "bad node type %d", type);
  goto out;
 }

 node_len = le32_to_cpu(ch->len);
 if (node_len + offs > c->leb_size)
  goto out_len;

 if (c->ranges[type].max_len == 0) {
  if (node_len != c->ranges[type].len)
   goto out_len;
 } else if (node_len < c->ranges[type].min_len ||
     node_len > c->ranges[type].max_len)
  goto out_len;

 if (!must_chk_crc && type == UBIFS_DATA_NODE && !c->mounting &&
     !c->remounting_rw && c->no_chk_data_crc)
  return 0;

 crc = crc32(UBIFS_CRC32_INIT, buf + 8, node_len - 8);
 node_crc = le32_to_cpu(ch->crc);
 if (crc != node_crc) {
  if (!quiet)
   ubifs_err(c, "bad CRC: calculated %#08x, read %#08x",
      crc, node_crc);
  err = -EUCLEAN;
  goto out;
 }

 return 0;

out_len:
 if (!quiet)
  ubifs_err(c, "bad node length %d", node_len);
out:
 if (!quiet) {
  ubifs_err(c, "bad node at LEB %d:%d", lnum, offs);
  ubifs_dump_node(c, buf);
  dump_stack();
 }
 return err;
}
