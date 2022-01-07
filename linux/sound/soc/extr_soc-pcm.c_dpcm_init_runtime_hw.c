
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_stream {int formats; int rates; int channels_max; int channels_min; int rate_max; int rate_min; } ;
struct TYPE_2__ {int formats; int rates; int channels_max; int channels_min; int rate_max; int rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;


 int UINT_MAX ;
 int min_not_zero (int ,int ) ;

__attribute__((used)) static void dpcm_init_runtime_hw(struct snd_pcm_runtime *runtime,
     struct snd_soc_pcm_stream *stream)
{
 runtime->hw.rate_min = stream->rate_min;
 runtime->hw.rate_max = min_not_zero(stream->rate_max, UINT_MAX);
 runtime->hw.channels_min = stream->channels_min;
 runtime->hw.channels_max = stream->channels_max;
 if (runtime->hw.formats)
  runtime->hw.formats &= stream->formats;
 else
  runtime->hw.formats = stream->formats;
 runtime->hw.rates = stream->rates;
}
