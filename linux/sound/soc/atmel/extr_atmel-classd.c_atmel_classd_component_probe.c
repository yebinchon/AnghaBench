
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
struct snd_soc_card {int dummy; } ;
struct atmel_classd_pdata {int pwm_type; int non_overlap_time; scalar_t__ non_overlap_enable; } ;
struct atmel_classd {struct atmel_classd_pdata* pdata; } ;


 int CLASSD_MR ;
 int CLASSD_MR_NON_OVERLAP_EN ;
 int CLASSD_MR_NON_OVERLAP_MASK ;
 int CLASSD_MR_NON_OVERLAP_SHIFT ;
 int CLASSD_MR_NOVR_VAL_10NS ;
 int CLASSD_MR_NOVR_VAL_15NS ;
 int CLASSD_MR_NOVR_VAL_20NS ;
 int CLASSD_MR_NOVR_VAL_5NS ;
 int CLASSD_MR_NOVR_VAL_MASK ;
 int CLASSD_MR_NOVR_VAL_SHIFT ;
 int CLASSD_MR_PWMTYP_MASK ;
 int CLASSD_MR_PWMTYP_SHIFT ;
 int dev_info (int ,char*,int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int * pwm_type ;
 struct atmel_classd* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_card* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int atmel_classd_component_probe(struct snd_soc_component *component)
{
 struct snd_soc_card *card = snd_soc_component_get_drvdata(component);
 struct atmel_classd *dd = snd_soc_card_get_drvdata(card);
 const struct atmel_classd_pdata *pdata = dd->pdata;
 u32 mask, val;

 mask = CLASSD_MR_PWMTYP_MASK;
 val = pdata->pwm_type << CLASSD_MR_PWMTYP_SHIFT;

 mask |= CLASSD_MR_NON_OVERLAP_MASK;
 if (pdata->non_overlap_enable) {
  val |= (CLASSD_MR_NON_OVERLAP_EN
   << CLASSD_MR_NON_OVERLAP_SHIFT);

  mask |= CLASSD_MR_NOVR_VAL_MASK;
  switch (pdata->non_overlap_time) {
  case 5:
   val |= (CLASSD_MR_NOVR_VAL_5NS
    << CLASSD_MR_NOVR_VAL_SHIFT);
   break;
  case 10:
   val |= (CLASSD_MR_NOVR_VAL_10NS
    << CLASSD_MR_NOVR_VAL_SHIFT);
   break;
  case 15:
   val |= (CLASSD_MR_NOVR_VAL_15NS
    << CLASSD_MR_NOVR_VAL_SHIFT);
   break;
  case 20:
   val |= (CLASSD_MR_NOVR_VAL_20NS
    << CLASSD_MR_NOVR_VAL_SHIFT);
   break;
  default:
   val |= (CLASSD_MR_NOVR_VAL_10NS
    << CLASSD_MR_NOVR_VAL_SHIFT);
   dev_warn(component->dev,
    "non-overlapping value %d is invalid, the default value 10 is specified\n",
    pdata->non_overlap_time);
   break;
  }
 }

 snd_soc_component_update_bits(component, CLASSD_MR, mask, val);

 dev_info(component->dev,
  "PWM modulation type is %s, non-overlapping is %s\n",
  pwm_type[pdata->pwm_type],
  pdata->non_overlap_enable?"enabled":"disabled");

 return 0;
}
