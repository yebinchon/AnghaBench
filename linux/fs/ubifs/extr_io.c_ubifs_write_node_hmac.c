
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int min_io_size; int leb_cnt; int leb_size; scalar_t__ ro_error; int space_fixup; int ro_mount; int ro_media; } ;
struct ubifs_ch {int node_type; } ;


 int ALIGN (int,int) ;
 int EROFS ;
 int dbg_io (char*,int,int,int ,int,int) ;
 int dbg_ntype (int ) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_dump_node (struct ubifs_info*,void*) ;
 int ubifs_leb_write (struct ubifs_info*,int,void*,int,int) ;
 int ubifs_prepare_node_hmac (struct ubifs_info*,void*,int,int,int) ;

int ubifs_write_node_hmac(struct ubifs_info *c, void *buf, int len, int lnum,
     int offs, int hmac_offs)
{
 int err, buf_len = ALIGN(len, c->min_io_size);

 dbg_io("LEB %d:%d, %s, length %d (aligned %d)",
        lnum, offs, dbg_ntype(((struct ubifs_ch *)buf)->node_type), len,
        buf_len);
 ubifs_assert(c, lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
 ubifs_assert(c, offs % c->min_io_size == 0 && offs < c->leb_size);
 ubifs_assert(c, !c->ro_media && !c->ro_mount);
 ubifs_assert(c, !c->space_fixup);

 if (c->ro_error)
  return -EROFS;

 err = ubifs_prepare_node_hmac(c, buf, len, hmac_offs, 1);
 if (err)
  return err;

 err = ubifs_leb_write(c, lnum, buf, offs, buf_len);
 if (err)
  ubifs_dump_node(c, buf);

 return err;
}
