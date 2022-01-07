
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int dummy; } ;
struct ubifs_info {int dummy; } ;


 scalar_t__ IS_ERR (struct ubifs_lprops const*) ;
 int PTR_ERR (struct ubifs_lprops const*) ;
 int memcpy (struct ubifs_lprops*,struct ubifs_lprops const*,int) ;
 int ubifs_err (struct ubifs_info*,char*,int,int) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 struct ubifs_lprops* ubifs_lpt_lookup (struct ubifs_info*,int) ;
 int ubifs_release_lprops (struct ubifs_info*) ;

int ubifs_read_one_lp(struct ubifs_info *c, int lnum, struct ubifs_lprops *lp)
{
 int err = 0;
 const struct ubifs_lprops *lpp;

 ubifs_get_lprops(c);

 lpp = ubifs_lpt_lookup(c, lnum);
 if (IS_ERR(lpp)) {
  err = PTR_ERR(lpp);
  ubifs_err(c, "cannot read properties of LEB %d, error %d",
     lnum, err);
  goto out;
 }

 memcpy(lp, lpp, sizeof(struct ubifs_lprops));

out:
 ubifs_release_lprops(c);
 return err;
}
