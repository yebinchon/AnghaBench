
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct hdmi_spec_per_pin {int num_mux_nids; int setup; int mux_idx; int channels; int pcm_idx; int pin_nid; int dev_id; int cvt_nid; struct hda_codec* codec; } ;
struct hdmi_spec {int pcm_in_use; int pcm_used; } ;
struct hda_pcm_stream {int nid; } ;
struct hda_pcm {TYPE_2__* pcm; struct hda_pcm_stream* stream; } ;
struct hda_codec {int dummy; } ;
struct TYPE_6__ {int channels; } ;
struct TYPE_5__ {TYPE_1__* streams; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;


 int AC_VERB_SET_CONNECT_SEL ;
 int check_non_pcm_per_cvt (struct hda_codec*,int ) ;
 struct hda_pcm* get_pcm_rec (struct hdmi_spec*,int ) ;
 int hdmi_get_pin_cvt_mux (struct hdmi_spec*,struct hdmi_spec_per_pin*,int ) ;
 int hdmi_setup_audio_infoframe (struct hda_codec*,struct hdmi_spec_per_pin*,int) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_set_dev_select (struct hda_codec*,int ,int ) ;
 int snd_hda_spdif_ctls_assign (struct hda_codec*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hdmi_pcm_setup_pin(struct hdmi_spec *spec,
      struct hdmi_spec_per_pin *per_pin)
{
 struct hda_codec *codec = per_pin->codec;
 struct hda_pcm *pcm;
 struct hda_pcm_stream *hinfo;
 struct snd_pcm_substream *substream;
 int mux_idx;
 bool non_pcm;

 if (per_pin->pcm_idx >= 0 && per_pin->pcm_idx < spec->pcm_used)
  pcm = get_pcm_rec(spec, per_pin->pcm_idx);
 else
  return;
 if (!pcm->pcm)
  return;
 if (!test_bit(per_pin->pcm_idx, &spec->pcm_in_use))
  return;


 hinfo = pcm->stream;
 substream = pcm->pcm->streams[0].substream;

 per_pin->cvt_nid = hinfo->nid;

 mux_idx = hdmi_get_pin_cvt_mux(spec, per_pin, hinfo->nid);
 if (mux_idx < per_pin->num_mux_nids) {
  snd_hda_set_dev_select(codec, per_pin->pin_nid,
       per_pin->dev_id);
  snd_hda_codec_write_cache(codec, per_pin->pin_nid, 0,
    AC_VERB_SET_CONNECT_SEL,
    mux_idx);
 }
 snd_hda_spdif_ctls_assign(codec, per_pin->pcm_idx, hinfo->nid);

 non_pcm = check_non_pcm_per_cvt(codec, hinfo->nid);
 if (substream->runtime)
  per_pin->channels = substream->runtime->channels;
 per_pin->setup = 1;
 per_pin->mux_idx = mux_idx;

 hdmi_setup_audio_infoframe(codec, per_pin, non_pcm);
}
