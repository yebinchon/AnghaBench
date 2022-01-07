
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_oxfw {TYPE_1__* card; int unit; struct fw_spkr* spec; } ;
struct snd_kcontrol_new {char* name; int put; int get; int info; int const iface; } ;
struct fw_spkr {int mixer_channels; int mute_fb_id; int volume_fb_id; int * volume; int mute; int volume_max; int volume_min; } ;
struct TYPE_2__ {int card_dev; } ;


 unsigned int ARRAY_SIZE (struct snd_kcontrol_new const*) ;
 int CTL_CURRENT ;
 int CTL_MAX ;
 int CTL_MIN ;
 int CTL_READ ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int avc_audio_feature_mute (int ,int,int *,int ) ;
 int avc_audio_feature_volume (int ,int,int *,unsigned int,int ,int ) ;
 struct fw_spkr* devm_kzalloc (int *,int,int ) ;
 int snd_ctl_add (TYPE_1__*,int ) ;

 int snd_ctl_new1 (struct snd_kcontrol_new const*,struct snd_oxfw*) ;






int snd_oxfw_add_spkr(struct snd_oxfw *oxfw, bool is_lacie)
{
 static const struct snd_kcontrol_new controls[] = {
  {
   .iface = 134,
   .name = "PCM Playback Switch",
   .info = 133,
   .get = 132,
   .put = 131,
  },
  {
   .iface = 134,
   .name = "PCM Playback Volume",
   .info = 129,
   .get = 130,
   .put = 128,
  },
 };
 struct fw_spkr *spkr;
 unsigned int i, first_ch;
 int err;

 spkr = devm_kzalloc(&oxfw->card->card_dev, sizeof(struct fw_spkr),
       GFP_KERNEL);
 if (!spkr)
  return -ENOMEM;
 oxfw->spec = spkr;

 if (is_lacie) {
  spkr->mixer_channels = 1;
  spkr->mute_fb_id = 0x01;
  spkr->volume_fb_id = 0x01;
 } else {
  spkr->mixer_channels = 6;
  spkr->mute_fb_id = 0x01;
  spkr->volume_fb_id = 0x02;
 }

 err = avc_audio_feature_volume(oxfw->unit, spkr->volume_fb_id,
           &spkr->volume_min, 0, CTL_MIN, CTL_READ);
 if (err < 0)
  return err;
 err = avc_audio_feature_volume(oxfw->unit, spkr->volume_fb_id,
           &spkr->volume_max, 0, CTL_MAX, CTL_READ);
 if (err < 0)
  return err;

 err = avc_audio_feature_mute(oxfw->unit, spkr->mute_fb_id, &spkr->mute,
         CTL_READ);
 if (err < 0)
  return err;

 first_ch = spkr->mixer_channels == 1 ? 0 : 1;
 for (i = 0; i < spkr->mixer_channels; ++i) {
  err = avc_audio_feature_volume(oxfw->unit, spkr->volume_fb_id,
            &spkr->volume[i], first_ch + i,
            CTL_CURRENT, CTL_READ);
  if (err < 0)
   return err;
 }

 for (i = 0; i < ARRAY_SIZE(controls); ++i) {
  err = snd_ctl_add(oxfw->card,
      snd_ctl_new1(&controls[i], oxfw));
  if (err < 0)
   return err;
 }

 return 0;
}
