
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {int dummy; } ;


 int generic_hdmi_playback_pcm_cleanup (struct hda_pcm_stream*,struct hda_codec*,struct snd_pcm_substream*) ;
 int tegra_hdmi_set_format (struct hda_codec*,int ) ;

__attribute__((used)) static int tegra_hdmi_pcm_cleanup(struct hda_pcm_stream *hinfo,
      struct hda_codec *codec,
      struct snd_pcm_substream *substream)
{

 tegra_hdmi_set_format(codec, 0);

 return generic_hdmi_playback_pcm_cleanup(hinfo, codec, substream);
}
