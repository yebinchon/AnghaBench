
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct lochnagar_sc_priv {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_FRAME_BITS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int lochnagar_sc_hw_rule_rate ;
 int lochnagar_sc_rate_constraint ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 int snd_pcm_hw_rule_add (int ,int ,int ,int ,struct lochnagar_sc_priv*,int ,int) ;
 struct lochnagar_sc_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int lochnagar_sc_startup(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *comp = dai->component;
 struct lochnagar_sc_priv *priv = snd_soc_component_get_drvdata(comp);
 int ret;

 ret = snd_pcm_hw_constraint_list(substream->runtime, 0,
      SNDRV_PCM_HW_PARAM_RATE,
      &lochnagar_sc_rate_constraint);
 if (ret)
  return ret;

 return snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       lochnagar_sc_hw_rule_rate, priv,
       SNDRV_PCM_HW_PARAM_FRAME_BITS, -1);
}
