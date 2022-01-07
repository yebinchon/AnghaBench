
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {size_t num; TYPE_1__* cpu_dai; int card; } ;
struct axg_dai_link_tdm_data {int slot_width; int slots; int tx_mask; } ;
struct axg_card {scalar_t__* link_data; } ;
struct TYPE_2__ {int dev; } ;


 int axg_tdm_set_tdm_slots (TYPE_1__*,int *,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 struct axg_card* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int axg_card_tdm_dai_lb_init(struct snd_soc_pcm_runtime *rtd)
{
 struct axg_card *priv = snd_soc_card_get_drvdata(rtd->card);
 struct axg_dai_link_tdm_data *be =
  (struct axg_dai_link_tdm_data *)priv->link_data[rtd->num];
 int ret;


 ret = axg_tdm_set_tdm_slots(rtd->cpu_dai, ((void*)0), be->tx_mask,
        be->slots, be->slot_width);
 if (ret) {
  dev_err(rtd->cpu_dai->dev, "setting tdm link slots failed\n");
  return ret;
 }

 return 0;
}
