
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct skl_pipe_params {int stream; int s_freq; int ch; int s_fmt; int member_0; } ;


 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int skl_tplg_be_update_params (struct snd_soc_dai*,struct skl_pipe_params*) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static int skl_be_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct skl_pipe_params p_params = {0};

 p_params.s_fmt = snd_pcm_format_width(params_format(params));
 p_params.ch = params_channels(params);
 p_params.s_freq = params_rate(params);
 p_params.stream = substream->stream;

 return skl_tplg_be_update_params(dai, &p_params);
}
