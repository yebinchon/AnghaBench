
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct cs43130_private {scalar_t__ xtal_ibias; int hpload_done; int regmap; int work; int wq; scalar_t__ dc_meas; int jack; struct snd_soc_component* component; } ;


 int CS43130_CRYSTAL_SET ;
 int CS43130_HP_DETECT ;
 int CS43130_HP_DETECT_CTRL_MASK ;
 int CS43130_HP_PLUG_INT ;
 int CS43130_HP_STATUS ;
 int CS43130_HP_UNPLUG_INT ;
 int CS43130_INT_MASK_1 ;
 int CS43130_INT_STATUS_1 ;
 int CS43130_JACK_MASK ;
 int CS43130_XTAL_ERR_INT ;
 int CS43130_XTAL_IBIAS_MASK ;
 scalar_t__ CS43130_XTAL_UNUSED ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int cs43130_imp_meas ;
 int dev_attr_hpload_ac_l ;
 int dev_attr_hpload_ac_r ;
 int dev_attr_hpload_dc_l ;
 int dev_attr_hpload_dc_r ;
 int dev_err (int ,char*) ;
 int device_create_file (int ,int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int ,int *,int *,int ) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_probe(struct snd_soc_component *component)
{
 int ret;
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);
 struct snd_soc_card *card = component->card;
 unsigned int reg;

 cs43130->component = component;

 if (cs43130->xtal_ibias != CS43130_XTAL_UNUSED) {
  regmap_update_bits(cs43130->regmap, CS43130_CRYSTAL_SET,
       CS43130_XTAL_IBIAS_MASK,
       cs43130->xtal_ibias);
  regmap_update_bits(cs43130->regmap, CS43130_INT_MASK_1,
       CS43130_XTAL_ERR_INT, 0);
 }

 ret = snd_soc_card_jack_new(card, "Headphone", CS43130_JACK_MASK,
        &cs43130->jack, ((void*)0), 0);
 if (ret < 0) {
  dev_err(component->dev, "Cannot create jack\n");
  return ret;
 }

 cs43130->hpload_done = 0;
 if (cs43130->dc_meas) {
  ret = device_create_file(component->dev, &dev_attr_hpload_dc_l);
  if (ret < 0)
   return ret;

  ret = device_create_file(component->dev, &dev_attr_hpload_dc_r);
  if (ret < 0)
   return ret;

  ret = device_create_file(component->dev, &dev_attr_hpload_ac_l);
  if (ret < 0)
   return ret;

  ret = device_create_file(component->dev, &dev_attr_hpload_ac_r);
  if (ret < 0)
   return ret;

  cs43130->wq = create_singlethread_workqueue("cs43130_hp");
  if (!cs43130->wq)
   return -ENOMEM;
  INIT_WORK(&cs43130->work, cs43130_imp_meas);
 }

 regmap_read(cs43130->regmap, CS43130_INT_STATUS_1, &reg);
 regmap_read(cs43130->regmap, CS43130_HP_STATUS, &reg);
 regmap_update_bits(cs43130->regmap, CS43130_INT_MASK_1,
      CS43130_HP_PLUG_INT | CS43130_HP_UNPLUG_INT, 0);
 regmap_update_bits(cs43130->regmap, CS43130_HP_DETECT,
      CS43130_HP_DETECT_CTRL_MASK, 0);
 regmap_update_bits(cs43130->regmap, CS43130_HP_DETECT,
      CS43130_HP_DETECT_CTRL_MASK,
      CS43130_HP_DETECT_CTRL_MASK);

 return 0;
}
