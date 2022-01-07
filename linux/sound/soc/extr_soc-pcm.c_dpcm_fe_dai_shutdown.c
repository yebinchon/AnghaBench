
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dpcm; TYPE_2__* dai_link; int dev; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int state; } ;


 int SND_SOC_DAPM_STREAM_STOP ;
 int SND_SOC_DPCM_STATE_CLOSE ;
 int SND_SOC_DPCM_UPDATE_FE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dev_dbg (int ,char*,int ) ;
 int dpcm_be_dai_shutdown (struct snd_soc_pcm_runtime*,int) ;
 int dpcm_dapm_stream_event (struct snd_soc_pcm_runtime*,int,int ) ;
 int dpcm_set_fe_update_state (struct snd_soc_pcm_runtime*,int,int ) ;
 int soc_pcm_close (struct snd_pcm_substream*) ;

__attribute__((used)) static int dpcm_fe_dai_shutdown(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *fe = substream->private_data;
 int stream = substream->stream;

 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_FE);


 dpcm_be_dai_shutdown(fe, substream->stream);

 dev_dbg(fe->dev, "ASoC: close FE %s\n", fe->dai_link->name);


 soc_pcm_close(substream);


 dpcm_dapm_stream_event(fe, stream, SND_SOC_DAPM_STREAM_STOP);

 fe->dpcm[stream].state = SND_SOC_DPCM_STATE_CLOSE;
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_NO);
 return 0;
}
