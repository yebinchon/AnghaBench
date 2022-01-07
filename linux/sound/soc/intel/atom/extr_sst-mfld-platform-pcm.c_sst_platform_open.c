
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; TYPE_1__* pcm; } ;
struct snd_pcm_runtime {int hw; } ;
struct TYPE_2__ {scalar_t__ internal; } ;


 int sst_platform_pcm_hw ;

__attribute__((used)) static int sst_platform_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;

 if (substream->pcm->internal)
  return 0;

 runtime = substream->runtime;
 runtime->hw = sst_platform_pcm_hw;
 return 0;
}
