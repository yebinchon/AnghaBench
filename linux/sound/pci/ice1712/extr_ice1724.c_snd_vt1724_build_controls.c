
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int count; } ;
struct snd_ice1712 {scalar_t__ num_total_dacs; int card; scalar_t__ vt1720; int own_routing; } ;


 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_ice1712*) ;
 struct snd_kcontrol_new snd_vt1724_eeprom ;
 struct snd_kcontrol_new snd_vt1724_mixer_pro_analog_route ;
 struct snd_kcontrol_new snd_vt1724_mixer_pro_peak ;
 struct snd_kcontrol_new snd_vt1724_pro_internal_clock ;
 struct snd_kcontrol_new snd_vt1724_pro_rate_locking ;
 struct snd_kcontrol_new snd_vt1724_pro_rate_reset ;

__attribute__((used)) static int snd_vt1724_build_controls(struct snd_ice1712 *ice)
{
 int err;

 err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_vt1724_eeprom, ice));
 if (err < 0)
  return err;
 err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_vt1724_pro_internal_clock, ice));
 if (err < 0)
  return err;

 err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_vt1724_pro_rate_locking, ice));
 if (err < 0)
  return err;
 err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_vt1724_pro_rate_reset, ice));
 if (err < 0)
  return err;

 if (!ice->own_routing && ice->num_total_dacs > 0) {
  struct snd_kcontrol_new tmp = snd_vt1724_mixer_pro_analog_route;
  tmp.count = ice->num_total_dacs;
  if (ice->vt1720 && tmp.count > 2)
   tmp.count = 2;
  err = snd_ctl_add(ice->card, snd_ctl_new1(&tmp, ice));
  if (err < 0)
   return err;
 }

 return snd_ctl_add(ice->card,
      snd_ctl_new1(&snd_vt1724_mixer_pro_peak, ice));
}
