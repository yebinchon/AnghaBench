
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {char* name; unsigned int index; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_card {int dummy; } ;
struct hdspm {int io_type; int system_sample_rate; unsigned int qs_out_channels; unsigned int ds_out_channels; unsigned int ss_out_channels; scalar_t__ tco; struct snd_kcontrol** playback_mixer_ctls; } ;




 unsigned int ARRAY_SIZE (struct snd_kcontrol_new*) ;



 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct hdspm*) ;
 struct snd_kcontrol_new* snd_hdspm_controls_aes32 ;
 struct snd_kcontrol_new* snd_hdspm_controls_aio ;
 struct snd_kcontrol_new* snd_hdspm_controls_madi ;
 struct snd_kcontrol_new* snd_hdspm_controls_madiface ;
 struct snd_kcontrol_new* snd_hdspm_controls_raydat ;
 struct snd_kcontrol_new* snd_hdspm_controls_tco ;
 struct snd_kcontrol_new snd_hdspm_playback_mixer ;

__attribute__((used)) static int snd_hdspm_create_controls(struct snd_card *card,
     struct hdspm *hdspm)
{
 unsigned int idx, limit;
 int err;
 struct snd_kcontrol *kctl;
 struct snd_kcontrol_new *list = ((void*)0);

 switch (hdspm->io_type) {
 case 130:
  list = snd_hdspm_controls_madi;
  limit = ARRAY_SIZE(snd_hdspm_controls_madi);
  break;
 case 129:
  list = snd_hdspm_controls_madiface;
  limit = ARRAY_SIZE(snd_hdspm_controls_madiface);
  break;
 case 131:
  list = snd_hdspm_controls_aio;
  limit = ARRAY_SIZE(snd_hdspm_controls_aio);
  break;
 case 128:
  list = snd_hdspm_controls_raydat;
  limit = ARRAY_SIZE(snd_hdspm_controls_raydat);
  break;
 case 132:
  list = snd_hdspm_controls_aes32;
  limit = ARRAY_SIZE(snd_hdspm_controls_aes32);
  break;
 }

 if (list) {
  for (idx = 0; idx < limit; idx++) {
   err = snd_ctl_add(card,
     snd_ctl_new1(&list[idx], hdspm));
   if (err < 0)
    return err;
  }
 }



 snd_hdspm_playback_mixer.name = "Chn";
 if (hdspm->system_sample_rate >= 128000) {
  limit = hdspm->qs_out_channels;
 } else if (hdspm->system_sample_rate >= 64000) {
  limit = hdspm->ds_out_channels;
 } else {
  limit = hdspm->ss_out_channels;
 }
 for (idx = 0; idx < limit; ++idx) {
  snd_hdspm_playback_mixer.index = idx + 1;
  kctl = snd_ctl_new1(&snd_hdspm_playback_mixer, hdspm);
  err = snd_ctl_add(card, kctl);
  if (err < 0)
   return err;
  hdspm->playback_mixer_ctls[idx] = kctl;
 }


 if (hdspm->tco) {

  list = snd_hdspm_controls_tco;
  limit = ARRAY_SIZE(snd_hdspm_controls_tco);
  for (idx = 0; idx < limit; idx++) {
   err = snd_ctl_add(card,
     snd_ctl_new1(&list[idx], hdspm));
   if (err < 0)
    return err;
  }
 }

 return 0;
}
