
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct special_params {int * ctl_id_sync; } ;
struct snd_kcontrol {int id; } ;
struct snd_bebob {int card; struct special_params* maudio_special_quirk; } ;


 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_bebob*) ;
 int special_clk_ctl ;
 int special_dig_in_iface_ctl ;
 int special_dig_out_iface_ctl ;
 int special_sync_ctl ;

__attribute__((used)) static int add_special_controls(struct snd_bebob *bebob)
{
 struct snd_kcontrol *kctl;
 struct special_params *params = bebob->maudio_special_quirk;
 int err;

 kctl = snd_ctl_new1(&special_clk_ctl, bebob);
 err = snd_ctl_add(bebob->card, kctl);
 if (err < 0)
  goto end;

 kctl = snd_ctl_new1(&special_sync_ctl, bebob);
 err = snd_ctl_add(bebob->card, kctl);
 if (err < 0)
  goto end;
 params->ctl_id_sync = &kctl->id;

 kctl = snd_ctl_new1(&special_dig_in_iface_ctl, bebob);
 err = snd_ctl_add(bebob->card, kctl);
 if (err < 0)
  goto end;

 kctl = snd_ctl_new1(&special_dig_out_iface_ctl, bebob);
 err = snd_ctl_add(bebob->card, kctl);
end:
 return err;
}
