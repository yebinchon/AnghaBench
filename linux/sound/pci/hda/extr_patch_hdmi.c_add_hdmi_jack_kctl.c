
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_jack {int private_free; TYPE_1__* private_data; } ;
struct hdmi_spec {TYPE_1__* pcm_rec; } ;
struct hda_codec {int card; } ;
struct TYPE_2__ {struct snd_jack* jack; } ;


 int SND_JACK_AVOUT ;
 int free_hdmi_jack_priv ;
 int snd_jack_new (int ,char const*,int ,struct snd_jack**,int,int) ;

__attribute__((used)) static int add_hdmi_jack_kctl(struct hda_codec *codec,
          struct hdmi_spec *spec,
          int pcm_idx,
          const char *name)
{
 struct snd_jack *jack;
 int err;

 err = snd_jack_new(codec->card, name, SND_JACK_AVOUT, &jack,
      1, 0);
 if (err < 0)
  return err;

 spec->pcm_rec[pcm_idx].jack = jack;
 jack->private_data = &spec->pcm_rec[pcm_idx];
 jack->private_free = free_hdmi_jack_priv;
 return 0;
}
