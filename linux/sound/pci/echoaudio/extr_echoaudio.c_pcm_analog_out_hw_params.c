
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int number; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int init_engine (struct snd_pcm_substream*,struct snd_pcm_hw_params*,int ,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int pcm_analog_out_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *hw_params)
{
 return init_engine(substream, hw_params, substream->number,
      params_channels(hw_params));
}
