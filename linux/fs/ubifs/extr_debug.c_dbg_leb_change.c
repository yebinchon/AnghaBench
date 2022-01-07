
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ubi; } ;


 int EROFS ;
 scalar_t__ dbg_is_power_cut (struct ubifs_info*) ;
 scalar_t__ power_cut_emulated (struct ubifs_info*,int,int) ;
 int ubi_leb_change (int ,int,void const*,int) ;

int dbg_leb_change(struct ubifs_info *c, int lnum, const void *buf,
     int len)
{
 int err;

 if (dbg_is_power_cut(c))
  return -EROFS;
 if (power_cut_emulated(c, lnum, 1))
  return -EROFS;
 err = ubi_leb_change(c->ubi, lnum, buf, len);
 if (err)
  return err;
 if (power_cut_emulated(c, lnum, 1))
  return -EROFS;
 return 0;
}
