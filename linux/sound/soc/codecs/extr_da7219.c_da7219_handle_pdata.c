
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {scalar_t__ mic_pga_delay; int wakeup_source; struct da7219_pdata* pdata; } ;
struct da7219_pdata {int micbias_lvl; int mic_amp_in_sel; int wakeup_source; } ;


 int DA7219_MICBIAS1_LEVEL_SHIFT ;






 int DA7219_MICBIAS_CTRL ;
 int DA7219_MIC_1_SELECT ;



 scalar_t__ DA7219_MIC_PGA_BASE_DELAY ;
 int DA7219_MIC_PGA_OFFSET_DELAY ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void da7219_handle_pdata(struct snd_soc_component *component)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 struct da7219_pdata *pdata = da7219->pdata;

 if (pdata) {
  u8 micbias_lvl = 0;

  da7219->wakeup_source = pdata->wakeup_source;


  switch (pdata->micbias_lvl) {
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
   micbias_lvl |= (pdata->micbias_lvl <<
     DA7219_MICBIAS1_LEVEL_SHIFT);
   break;
  }

  snd_soc_component_write(component, DA7219_MICBIAS_CTRL, micbias_lvl);





  da7219->mic_pga_delay = DA7219_MIC_PGA_BASE_DELAY +
     (pdata->micbias_lvl *
      DA7219_MIC_PGA_OFFSET_DELAY);


  switch (pdata->mic_amp_in_sel) {
  case 130:
  case 128:
  case 129:
   snd_soc_component_write(component, DA7219_MIC_1_SELECT,
          pdata->mic_amp_in_sel);
   break;
  }
 }
}
