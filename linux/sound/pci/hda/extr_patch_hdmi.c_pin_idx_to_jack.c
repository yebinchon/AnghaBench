
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_jack {int dummy; } ;
struct hdmi_spec_per_pin {size_t pcm_idx; int pin_nid; } ;
struct hdmi_spec {scalar_t__ dyn_pcm_assign; TYPE_1__* pcm_rec; } ;
struct hda_jack_tbl {struct snd_jack* jack; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {struct snd_jack* jack; } ;


 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;

__attribute__((used)) static struct snd_jack *pin_idx_to_jack(struct hda_codec *codec,
     struct hdmi_spec_per_pin *per_pin)
{
 struct hdmi_spec *spec = codec->spec;
 struct snd_jack *jack = ((void*)0);
 struct hda_jack_tbl *jack_tbl;







 if (per_pin->pcm_idx >= 0 && spec->dyn_pcm_assign)
  jack = spec->pcm_rec[per_pin->pcm_idx].jack;
 else if (!spec->dyn_pcm_assign) {





  jack_tbl = snd_hda_jack_tbl_get(codec, per_pin->pin_nid);
  if (jack_tbl)
   jack = jack_tbl->jack;
 }
 return jack;
}
