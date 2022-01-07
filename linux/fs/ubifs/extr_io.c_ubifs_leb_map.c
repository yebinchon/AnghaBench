
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; scalar_t__ ro_error; int ro_mount; int ro_media; } ;


 int EROFS ;
 int dbg_is_tst_rcvry (struct ubifs_info*) ;
 int dbg_leb_map (struct ubifs_info*,int) ;
 int dump_stack () ;
 int ubi_leb_map (int ,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_err (struct ubifs_info*,char*,int,int) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;

int ubifs_leb_map(struct ubifs_info *c, int lnum)
{
 int err;

 ubifs_assert(c, !c->ro_media && !c->ro_mount);
 if (c->ro_error)
  return -EROFS;
 if (!dbg_is_tst_rcvry(c))
  err = ubi_leb_map(c->ubi, lnum);
 else
  err = dbg_leb_map(c, lnum);
 if (err) {
  ubifs_err(c, "mapping LEB %d failed, error %d", lnum, err);
  ubifs_ro_mode(c, err);
  dump_stack();
 }
 return err;
}
