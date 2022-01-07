
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {int dummy; } ;


 int generic_hdmi_playback_pcm_prepare (struct hda_pcm_stream*,struct hda_codec*,unsigned int,unsigned int,struct snd_pcm_substream*) ;
 int tegra_hdmi_set_format (struct hda_codec*,unsigned int) ;

__attribute__((used)) static int tegra_hdmi_pcm_prepare(struct hda_pcm_stream *hinfo,
      struct hda_codec *codec,
      unsigned int stream_tag,
      unsigned int format,
      struct snd_pcm_substream *substream)
{
 int err;

 err = generic_hdmi_playback_pcm_prepare(hinfo, codec, stream_tag,
      format, substream);
 if (err < 0)
  return err;


 tegra_hdmi_set_format(codec, format);

 return 0;
}
