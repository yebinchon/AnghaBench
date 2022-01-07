
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec_per_pin {int pcm_idx; int dev_id; int non_pcm; int pin_nid_idx; int pin_nid; int * pcm; } ;
struct hdmi_spec {int dev_num; int num_pins; int num_nids; scalar_t__ dyn_pcm_assign; int pins; } ;
struct hda_codec {scalar_t__ dp_mst; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_JACK_PORT_NONE ;
 unsigned int AC_PINCAP_DP ;
 unsigned int AC_PINCAP_HDMI ;
 int ENOMEM ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 int * get_hdmi_pcm (struct hdmi_spec*,int) ;
 int hdmi_read_pin_conn (struct hda_codec*,int) ;
 int intel_haswell_fixup_connect_list (struct hda_codec*,int ) ;
 scalar_t__ is_haswell_plus (struct hda_codec*) ;
 struct hdmi_spec_per_pin* snd_array_new (int *) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_get_num_devices (struct hda_codec*,int ) ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;
 int snd_hda_set_dev_select (struct hda_codec*,int ,int) ;

__attribute__((used)) static int hdmi_add_pin(struct hda_codec *codec, hda_nid_t pin_nid)
{
 struct hdmi_spec *spec = codec->spec;
 unsigned int caps, config;
 int pin_idx;
 struct hdmi_spec_per_pin *per_pin;
 int err;
 int dev_num, i;

 caps = snd_hda_query_pin_caps(codec, pin_nid);
 if (!(caps & (AC_PINCAP_HDMI | AC_PINCAP_DP)))
  return 0;





 config = snd_hda_codec_get_pincfg(codec, pin_nid);
 if (get_defcfg_connect(config) == AC_JACK_PORT_NONE)
  return 0;





 if (is_haswell_plus(codec)) {
  dev_num = 3;
  spec->dev_num = 3;
 } else if (spec->dyn_pcm_assign && codec->dp_mst) {
  dev_num = snd_hda_get_num_devices(codec, pin_nid) + 1;




  spec->dev_num = (spec->dev_num > dev_num) ?
   spec->dev_num : dev_num;
 } else {





  dev_num = 1;
  spec->dev_num = 1;
 }

 for (i = 0; i < dev_num; i++) {
  pin_idx = spec->num_pins;
  per_pin = snd_array_new(&spec->pins);

  if (!per_pin)
   return -ENOMEM;

  if (spec->dyn_pcm_assign) {
   per_pin->pcm = ((void*)0);
   per_pin->pcm_idx = -1;
  } else {
   per_pin->pcm = get_hdmi_pcm(spec, pin_idx);
   per_pin->pcm_idx = pin_idx;
  }
  per_pin->pin_nid = pin_nid;
  per_pin->pin_nid_idx = spec->num_nids;
  per_pin->dev_id = i;
  per_pin->non_pcm = 0;
  snd_hda_set_dev_select(codec, pin_nid, i);
  if (is_haswell_plus(codec))
   intel_haswell_fixup_connect_list(codec, pin_nid);
  err = hdmi_read_pin_conn(codec, pin_idx);
  if (err < 0)
   return err;
  spec->num_pins++;
 }
 spec->num_nids++;

 return 0;
}
