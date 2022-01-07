
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cleanup; int prepare; } ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct hda_pcm {struct hda_pcm_stream* stream; } ;
struct hda_codec {int dummy; } ;


 int ENODEV ;
 int HDA_PCM_TYPE_HDMI ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int generic_hdmi_build_pcms (struct hda_codec*) ;
 struct hda_pcm* hda_find_pcm_by_type (struct hda_codec*,int ) ;
 int tegra_hdmi_pcm_cleanup ;
 int tegra_hdmi_pcm_prepare ;

__attribute__((used)) static int tegra_hdmi_build_pcms(struct hda_codec *codec)
{
 struct hda_pcm_stream *stream;
 struct hda_pcm *pcm;
 int err;

 err = generic_hdmi_build_pcms(codec);
 if (err < 0)
  return err;

 pcm = hda_find_pcm_by_type(codec, HDA_PCM_TYPE_HDMI);
 if (!pcm)
  return -ENODEV;





 stream = &pcm->stream[SNDRV_PCM_STREAM_PLAYBACK];
 stream->ops.prepare = tegra_hdmi_pcm_prepare;
 stream->ops.cleanup = tegra_hdmi_pcm_cleanup;

 return 0;
}
