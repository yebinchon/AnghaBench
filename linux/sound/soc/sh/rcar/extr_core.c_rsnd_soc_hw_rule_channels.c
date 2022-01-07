
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct rsnd_dai_stream* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int max; int min; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 int rsnd_runtime_channel_for_ssi_with_params (struct rsnd_dai_stream*,struct snd_pcm_hw_params*) ;
 int rsnd_soc_hw_channels_list ;
 int rsnd_soc_hw_rule (struct rsnd_dai*,int ,int ,struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int rsnd_soc_hw_rule_channels(struct snd_pcm_hw_params *params,
         struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *ic_ = hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval *ir = hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 struct snd_interval ic;
 struct rsnd_dai_stream *io = rule->private;
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);






 ic = *ic_;
 ic.min =
 ic.max = rsnd_runtime_channel_for_ssi_with_params(io, params);

 return rsnd_soc_hw_rule(rdai, rsnd_soc_hw_channels_list,
    ARRAY_SIZE(rsnd_soc_hw_channels_list),
    ir, &ic);
}
