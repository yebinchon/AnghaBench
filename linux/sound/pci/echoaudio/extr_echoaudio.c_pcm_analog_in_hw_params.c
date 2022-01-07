
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ number; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct echoaudio {int dummy; } ;


 int init_engine (struct snd_pcm_substream*,struct snd_pcm_hw_params*,scalar_t__,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 scalar_t__ px_analog_in (struct echoaudio*) ;
 struct echoaudio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_analog_in_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *hw_params)
{
 struct echoaudio *chip = snd_pcm_substream_chip(substream);

 return init_engine(substream, hw_params, px_analog_in(chip) +
   substream->number, params_channels(hw_params));
}
