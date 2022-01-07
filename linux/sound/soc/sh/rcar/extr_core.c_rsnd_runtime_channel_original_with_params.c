
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int channels; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int params_channels (struct snd_pcm_hw_params*) ;
 struct snd_pcm_runtime* rsnd_io_to_runtime (struct rsnd_dai_stream*) ;

int rsnd_runtime_channel_original_with_params(struct rsnd_dai_stream *io,
           struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime = rsnd_io_to_runtime(io);







 if (params)
  return params_channels(params);
 else
  return runtime->channels;
}
