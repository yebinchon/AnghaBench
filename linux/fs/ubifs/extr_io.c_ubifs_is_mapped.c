
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; } ;


 int dump_stack () ;
 int ubi_is_mapped (int ,int) ;
 int ubifs_err (struct ubifs_info const*,char*,int,int) ;

int ubifs_is_mapped(const struct ubifs_info *c, int lnum)
{
 int err;

 err = ubi_is_mapped(c->ubi, lnum);
 if (err < 0) {
  ubifs_err(c, "ubi_is_mapped failed for LEB %d, error %d",
     lnum, err);
  dump_stack();
 }
 return err;
}
