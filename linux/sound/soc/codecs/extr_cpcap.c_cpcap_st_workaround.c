
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct cpcap_audio {scalar_t__ vendor; int regmap; } ;


 int CPCAP_REG_ST_TEST1 ;
 int CPCAP_REG_TEST ;
 scalar_t__ CPCAP_VENDOR_ST ;


 int STM_STDAC_ACTIVATE_RAMP_TIME ;
 int STM_STDAC_EN_ST_TEST1_POST ;
 int STM_STDAC_EN_ST_TEST1_PRE ;
 int STM_STDAC_EN_TEST_POST ;
 int STM_STDAC_EN_TEST_PRE ;
 int msleep (int ) ;
 int regmap_write (int ,int ,int ) ;
 struct cpcap_audio* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int cpcap_st_workaround(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct cpcap_audio *cpcap = snd_soc_component_get_drvdata(component);
 int err = 0;


 if (cpcap->vendor != CPCAP_VENDOR_ST)
  return 0;

 switch (event) {
 case 128:
  err = regmap_write(cpcap->regmap, CPCAP_REG_TEST,
       STM_STDAC_EN_TEST_PRE);
  if (err)
   return err;
  err = regmap_write(cpcap->regmap, CPCAP_REG_ST_TEST1,
       STM_STDAC_EN_ST_TEST1_PRE);
  break;
 case 129:
  msleep(STM_STDAC_ACTIVATE_RAMP_TIME);

  err = regmap_write(cpcap->regmap, CPCAP_REG_ST_TEST1,
       STM_STDAC_EN_ST_TEST1_POST);
  if (err)
   return err;
  err = regmap_write(cpcap->regmap, CPCAP_REG_TEST,
       STM_STDAC_EN_TEST_POST);
  break;
 default:
  break;
 }

 return err;
}
