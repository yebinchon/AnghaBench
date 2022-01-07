
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; } ;


 int EROFS ;
 scalar_t__ dbg_is_power_cut (struct ubifs_info*) ;
 scalar_t__ power_cut_emulated (struct ubifs_info*,int,int ) ;
 int ubi_leb_map (int ,int) ;

int dbg_leb_map(struct ubifs_info *c, int lnum)
{
 int err;

 if (dbg_is_power_cut(c))
  return -EROFS;
 if (power_cut_emulated(c, lnum, 0))
  return -EROFS;
 err = ubi_leb_map(c->ubi, lnum);
 if (err)
  return err;
 if (power_cut_emulated(c, lnum, 0))
  return -EROFS;
 return 0;
}
