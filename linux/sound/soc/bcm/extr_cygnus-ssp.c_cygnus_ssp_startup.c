
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_3__* runtime; } ;
struct TYPE_5__ {int play_en; int cap_en; } ;
struct cygnus_aio_port {TYPE_2__ clk_trace; } ;
struct TYPE_4__ {int rate_max; int rate_min; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;


 int CYGNUS_RATE_MAX ;
 int CYGNUS_RATE_MIN ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct cygnus_aio_port* cygnus_dai_get_portinfo (struct snd_soc_dai*) ;
 int cygnus_rate_constraint ;
 int snd_pcm_hw_constraint_list (TYPE_3__*,int ,int ,int *) ;
 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,struct cygnus_aio_port*) ;

__attribute__((used)) static int cygnus_ssp_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct cygnus_aio_port *aio = cygnus_dai_get_portinfo(dai);

 snd_soc_dai_set_dma_data(dai, substream, aio);
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  aio->clk_trace.play_en = 1;
 else
  aio->clk_trace.cap_en = 1;

 substream->runtime->hw.rate_min = CYGNUS_RATE_MIN;
 substream->runtime->hw.rate_max = CYGNUS_RATE_MAX;

 snd_pcm_hw_constraint_list(substream->runtime, 0,
   SNDRV_PCM_HW_PARAM_RATE, &cygnus_rate_constraint);
 return 0;
}
