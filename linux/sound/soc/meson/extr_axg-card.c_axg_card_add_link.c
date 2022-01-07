
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_link_component {int of_node; int dai_name; } ;
struct snd_soc_dai_link {int num_cpus; int * params; struct snd_soc_dai_link_component* cpus; } ;
struct snd_soc_card {int dev; struct snd_soc_dai_link* dai_link; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ axg_card_cpu_is_capture_fe (int ) ;
 scalar_t__ axg_card_cpu_is_codec (int ) ;
 scalar_t__ axg_card_cpu_is_playback_fe (int ) ;
 scalar_t__ axg_card_cpu_is_tdm_iface (int ) ;
 int axg_card_parse_dai (struct snd_soc_card*,struct device_node*,int *,int *) ;
 int axg_card_parse_tdm (struct snd_soc_card*,struct device_node*,int*) ;
 int axg_card_set_be_link (struct snd_soc_card*,struct snd_soc_dai_link*,struct device_node*) ;
 int axg_card_set_fe_link (struct snd_soc_card*,struct snd_soc_dai_link*,struct device_node*,int) ;
 int codec_params ;
 struct snd_soc_dai_link_component* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static int axg_card_add_link(struct snd_soc_card *card, struct device_node *np,
        int *index)
{
 struct snd_soc_dai_link *dai_link = &card->dai_link[*index];
 struct snd_soc_dai_link_component *cpu;
 int ret;

 cpu = devm_kzalloc(card->dev, sizeof(*cpu), GFP_KERNEL);
 if (!cpu)
  return -ENOMEM;

 dai_link->cpus = cpu;
 dai_link->num_cpus = 1;

 ret = axg_card_parse_dai(card, np, &dai_link->cpus->of_node,
     &dai_link->cpus->dai_name);
 if (ret)
  return ret;

 if (axg_card_cpu_is_playback_fe(dai_link->cpus->of_node))
  ret = axg_card_set_fe_link(card, dai_link, np, 1);
 else if (axg_card_cpu_is_capture_fe(dai_link->cpus->of_node))
  ret = axg_card_set_fe_link(card, dai_link, np, 0);
 else
  ret = axg_card_set_be_link(card, dai_link, np);

 if (ret)
  return ret;

 if (axg_card_cpu_is_tdm_iface(dai_link->cpus->of_node))
  ret = axg_card_parse_tdm(card, np, index);
 else if (axg_card_cpu_is_codec(dai_link->cpus->of_node))
  dai_link->params = &codec_params;

 return ret;
}
