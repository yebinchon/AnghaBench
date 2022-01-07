
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int add_single_cap_ctl (struct hda_codec*,int *,int,int,unsigned int,int) ;

__attribute__((used)) static int create_single_cap_vol_ctl(struct hda_codec *codec, int idx,
         unsigned int vol_ctl, unsigned int sw_ctl,
         bool inv_dmic)
{
 int err;
 err = add_single_cap_ctl(codec, ((void*)0), idx, 0, vol_ctl, inv_dmic);
 if (err < 0)
  return err;
 err = add_single_cap_ctl(codec, ((void*)0), idx, 1, sw_ctl, inv_dmic);
 if (err < 0)
  return err;
 return 0;
}
