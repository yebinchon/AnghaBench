
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int conn_type; int spk_alloc; } ;
struct hdmi_eld {TYPE_3__ info; } ;
struct hdmi_spec_per_pin {int channels; int non_pcm; int chmap_set; int chmap; int cvt_nid; struct hdmi_eld sink_eld; int pin_nid; } ;
struct TYPE_5__ {int (* pin_setup_infoframe ) (struct hda_codec*,int ,int,int,int ) ;} ;
struct TYPE_4__ {int (* set_channel_count ) (int *,int ,int) ;} ;
struct hdac_chmap {TYPE_1__ ops; } ;
struct hdmi_spec {TYPE_2__ ops; struct hdac_chmap chmap; } ;
struct hda_codec {int core; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int AC_WCAP_OUT_AMP ;
 int AMP_OUT_UNMUTE ;
 int get_wcaps (struct hda_codec*,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hdac_channel_allocation (int *,int ,int,int ,int,int ) ;
 int snd_hdac_get_active_channels (int) ;
 int snd_hdac_setup_channel_mapping (struct hdac_chmap*,int ,int,int,int,int ,int ) ;
 int stub1 (int *,int ,int) ;
 int stub2 (struct hda_codec*,int ,int,int,int ) ;

__attribute__((used)) static void hdmi_setup_audio_infoframe(struct hda_codec *codec,
           struct hdmi_spec_per_pin *per_pin,
           bool non_pcm)
{
 struct hdmi_spec *spec = codec->spec;
 struct hdac_chmap *chmap = &spec->chmap;
 hda_nid_t pin_nid = per_pin->pin_nid;
 int channels = per_pin->channels;
 int active_channels;
 struct hdmi_eld *eld;
 int ca;

 if (!channels)
  return;


 if (get_wcaps(codec, pin_nid) & AC_WCAP_OUT_AMP)
  snd_hda_codec_write(codec, pin_nid, 0,
         AC_VERB_SET_AMP_GAIN_MUTE,
         AMP_OUT_UNMUTE);

 eld = &per_pin->sink_eld;

 ca = snd_hdac_channel_allocation(&codec->core,
   eld->info.spk_alloc, channels,
   per_pin->chmap_set, non_pcm, per_pin->chmap);

 active_channels = snd_hdac_get_active_channels(ca);

 chmap->ops.set_channel_count(&codec->core, per_pin->cvt_nid,
      active_channels);





 snd_hdac_setup_channel_mapping(&spec->chmap,
    pin_nid, non_pcm, ca, channels,
    per_pin->chmap, per_pin->chmap_set);

 spec->ops.pin_setup_infoframe(codec, pin_nid, ca, active_channels,
          eld->info.conn_type);

 per_pin->non_pcm = non_pcm;
}
