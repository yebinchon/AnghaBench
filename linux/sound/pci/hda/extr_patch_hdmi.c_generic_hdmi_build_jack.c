
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdmi_spec_per_pin {int pin_nid; } ;
struct hdmi_spec {TYPE_1__* pcm_rec; scalar_t__ dyn_pcm_assign; } ;
struct hda_jack_tbl {int jack; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hdmi_str ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int jack; } ;


 int add_hdmi_jack_kctl (struct hda_codec*,struct hdmi_spec*,int,char*) ;
 TYPE_2__* get_pcm_rec (struct hdmi_spec*,int) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int is_jack_detectable (struct hda_codec*,int ) ;
 int snd_hda_jack_add_kctl (struct hda_codec*,int ,char*,int,int ,int *) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

__attribute__((used)) static int generic_hdmi_build_jack(struct hda_codec *codec, int pcm_idx)
{
 char hdmi_str[32] = "HDMI/DP";
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_spec_per_pin *per_pin;
 struct hda_jack_tbl *jack;
 int pcmdev = get_pcm_rec(spec, pcm_idx)->device;
 bool phantom_jack;
 int ret;

 if (pcmdev > 0)
  sprintf(hdmi_str + strlen(hdmi_str), ",pcm=%d", pcmdev);

 if (spec->dyn_pcm_assign)
  return add_hdmi_jack_kctl(codec, spec, pcm_idx, hdmi_str);






 per_pin = get_pin(spec, pcm_idx);
 phantom_jack = !is_jack_detectable(codec, per_pin->pin_nid);
 if (phantom_jack)
  strncat(hdmi_str, " Phantom",
   sizeof(hdmi_str) - strlen(hdmi_str) - 1);
 ret = snd_hda_jack_add_kctl(codec, per_pin->pin_nid, hdmi_str,
        phantom_jack, 0, ((void*)0));
 if (ret < 0)
  return ret;
 jack = snd_hda_jack_tbl_get(codec, per_pin->pin_nid);
 if (jack == ((void*)0))
  return 0;



 spec->pcm_rec[pcm_idx].jack = jack->jack;
 return 0;
}
