
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_2__* runtime; struct snd_oxfw* private_data; } ;
struct snd_oxfw_stream_formation {int rate; int pcm; } ;
struct snd_oxfw {int dummy; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;
struct TYPE_3__ {int rate_max; int rate_min; int channels_max; int channels_min; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int snd_oxfw_stream_get_current_formation (struct snd_oxfw*,int,struct snd_oxfw_stream_formation*) ;

__attribute__((used)) static int limit_to_current_params(struct snd_pcm_substream *substream)
{
 struct snd_oxfw *oxfw = substream->private_data;
 struct snd_oxfw_stream_formation formation;
 enum avc_general_plug_dir dir;
 int err;

 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
  dir = AVC_GENERAL_PLUG_DIR_OUT;
 else
  dir = AVC_GENERAL_PLUG_DIR_IN;

 err = snd_oxfw_stream_get_current_formation(oxfw, dir, &formation);
 if (err < 0)
  goto end;

 substream->runtime->hw.channels_min = formation.pcm;
 substream->runtime->hw.channels_max = formation.pcm;
 substream->runtime->hw.rate_min = formation.rate;
 substream->runtime->hw.rate_max = formation.rate;
end:
 return err;
}
