
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_chmap {unsigned int channel_mask; } ;
struct hdmi_spec {int dummy; } ;
struct hda_pcm {int pcm; } ;
struct hda_codec {TYPE_1__* preset; struct hdmi_spec* spec; } ;
struct TYPE_2__ {int vendor_id; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 struct hda_pcm* get_pcm_rec (struct hdmi_spec*,int ) ;
 int simple_playback_build_controls (struct hda_codec*) ;
 int snd_pcm_add_chmap_ctls (int ,int ,int ,int,int ,struct snd_pcm_chmap**) ;
 int snd_pcm_alt_chmaps ;

__attribute__((used)) static int nvhdmi_7x_8ch_build_controls(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 struct hda_pcm *info;
 struct snd_pcm_chmap *chmap;
 int err;

 err = simple_playback_build_controls(codec);
 if (err < 0)
  return err;


 info = get_pcm_rec(spec, 0);
 err = snd_pcm_add_chmap_ctls(info->pcm,
         SNDRV_PCM_STREAM_PLAYBACK,
         snd_pcm_alt_chmaps, 8, 0, &chmap);
 if (err < 0)
  return err;
 switch (codec->preset->vendor_id) {
 case 0x10de0002:
 case 0x10de0003:
 case 0x10de0005:
 case 0x10de0006:
  chmap->channel_mask = (1U << 2) | (1U << 8);
  break;
 case 0x10de0007:
  chmap->channel_mask = (1U << 2) | (1U << 6) | (1U << 8);
 }
 return 0;
}
