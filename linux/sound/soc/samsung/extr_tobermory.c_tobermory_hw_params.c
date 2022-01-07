
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int params_rate (struct snd_pcm_hw_params*) ;
 int sample_rate ;

__attribute__((used)) static int tobermory_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params)
{
 sample_rate = params_rate(params);

 return 0;
}
