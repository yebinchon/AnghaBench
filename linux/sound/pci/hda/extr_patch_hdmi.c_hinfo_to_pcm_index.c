
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec {int pcm_used; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {struct hda_pcm_stream* stream; } ;


 int EINVAL ;
 int codec_warn (struct hda_codec*,char*,struct hda_pcm_stream*) ;
 TYPE_1__* get_pcm_rec (struct hdmi_spec*,int) ;

__attribute__((used)) static int hinfo_to_pcm_index(struct hda_codec *codec,
   struct hda_pcm_stream *hinfo)
{
 struct hdmi_spec *spec = codec->spec;
 int pcm_idx;

 for (pcm_idx = 0; pcm_idx < spec->pcm_used; pcm_idx++)
  if (get_pcm_rec(spec, pcm_idx)->stream == hinfo)
   return pcm_idx;

 codec_warn(codec, "HDMI: hinfo %p not registered\n", hinfo);
 return -EINVAL;
}
