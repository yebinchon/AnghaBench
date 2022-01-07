
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; scalar_t__ ro_error; int ro_mount; int ro_media; } ;


 int EROFS ;
 int dbg_is_tst_rcvry (struct ubifs_info*) ;
 int dbg_leb_change (struct ubifs_info*,int,void const*,int) ;
 int dump_stack () ;
 int ubi_leb_change (int ,int,void const*,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_err (struct ubifs_info*,char*,int,int,int) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;

int ubifs_leb_change(struct ubifs_info *c, int lnum, const void *buf, int len)
{
 int err;

 ubifs_assert(c, !c->ro_media && !c->ro_mount);
 if (c->ro_error)
  return -EROFS;
 if (!dbg_is_tst_rcvry(c))
  err = ubi_leb_change(c->ubi, lnum, buf, len);
 else
  err = dbg_leb_change(c, lnum, buf, len);
 if (err) {
  ubifs_err(c, "changing %d bytes in LEB %d failed, error %d",
     len, lnum, err);
  ubifs_ro_mode(c, err);
  dump_stack();
 }
 return err;
}
