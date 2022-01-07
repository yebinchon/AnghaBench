
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {struct da7219_pdata* pdata; struct da7219_aad_priv* aad; } ;
struct da7219_pdata {struct da7219_aad_pdata* aad_pdata; } ;
struct da7219_aad_priv {int micbias_pulse_lvl; int btn_cfg; int micbias_pulse_time; int irq; } ;
struct da7219_aad_pdata {int micbias_pulse_lvl; int btn_cfg; int mic_det_thr; int jack_ins_deb; int jack_det_rate; int jack_rem_deb; int btn_avg; int adc_1bit_rpt; int c_mic_btn_thr; int b_c_btn_thr; int d_b_btn_thr; int a_d_btn_thr; int micbias_pulse_time; int irq; } ;
 int DA7219_ACCDET_CONFIG_1 ;
 int DA7219_ACCDET_CONFIG_2 ;
 int DA7219_ACCDET_CONFIG_3 ;
 int DA7219_ACCDET_CONFIG_4 ;
 int DA7219_ACCDET_CONFIG_5 ;
 int DA7219_ACCDET_CONFIG_6 ;
 int DA7219_ACCDET_CONFIG_7 ;
 int DA7219_ADC_1_BIT_REPEAT_MASK ;
 int DA7219_ADC_1_BIT_REPEAT_SHIFT ;
 int DA7219_BUTTON_AVERAGE_MASK ;
 int DA7219_BUTTON_AVERAGE_SHIFT ;
 int DA7219_BUTTON_CONFIG_SHIFT ;
 int DA7219_JACKDET_DEBOUNCE_MASK ;
 int DA7219_JACKDET_DEBOUNCE_SHIFT ;
 int DA7219_JACKDET_REM_DEB_MASK ;
 int DA7219_JACKDET_REM_DEB_SHIFT ;
 int DA7219_JACK_DETECT_RATE_MASK ;
 int DA7219_JACK_DETECT_RATE_SHIFT ;
 int DA7219_MICBIAS1_LEVEL_SHIFT ;
 int DA7219_MIC_DET_THRESH_MASK ;
 int DA7219_MIC_DET_THRESH_SHIFT ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void da7219_aad_handle_pdata(struct snd_soc_component *component)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 struct da7219_aad_priv *da7219_aad = da7219->aad;
 struct da7219_pdata *pdata = da7219->pdata;

 if ((pdata) && (pdata->aad_pdata)) {
  struct da7219_aad_pdata *aad_pdata = pdata->aad_pdata;
  u8 cfg, mask;

  da7219_aad->irq = aad_pdata->irq;

  switch (aad_pdata->micbias_pulse_lvl) {
  case 133:
  case 132:
   da7219_aad->micbias_pulse_lvl =
    (aad_pdata->micbias_pulse_lvl <<
     DA7219_MICBIAS1_LEVEL_SHIFT);
   break;
  default:
   break;
  }

  da7219_aad->micbias_pulse_time = aad_pdata->micbias_pulse_time;

  switch (aad_pdata->btn_cfg) {
  case 153:
  case 150:
  case 155:
  case 151:
  case 156:
  case 154:
  case 152:
   da7219_aad->btn_cfg = (aad_pdata->btn_cfg <<
      DA7219_BUTTON_CONFIG_SHIFT);
  }

  cfg = 0;
  mask = 0;
  switch (aad_pdata->mic_det_thr) {
  case 130:
  case 129:
  case 128:
  case 131:
   cfg |= (aad_pdata->mic_det_thr <<
    DA7219_MIC_DET_THRESH_SHIFT);
   mask |= DA7219_MIC_DET_THRESH_MASK;
  }
  snd_soc_component_update_bits(component, DA7219_ACCDET_CONFIG_1, mask, cfg);

  cfg = 0;
  mask = 0;
  switch (aad_pdata->jack_ins_deb) {
  case 138:
  case 144:
  case 141:
  case 139:
  case 145:
  case 142:
  case 140:
  case 143:
   cfg |= (aad_pdata->jack_ins_deb <<
    DA7219_JACKDET_DEBOUNCE_SHIFT);
   mask |= DA7219_JACKDET_DEBOUNCE_MASK;
  }
  switch (aad_pdata->jack_det_rate) {
  case 147:
  case 146:
  case 149:
  case 148:
   cfg |= (aad_pdata->jack_det_rate <<
    DA7219_JACK_DETECT_RATE_SHIFT);
   mask |= DA7219_JACK_DETECT_RATE_MASK;
  }
  switch (aad_pdata->jack_rem_deb) {
  case 136:
  case 134:
  case 137:
  case 135:
   cfg |= (aad_pdata->jack_rem_deb <<
    DA7219_JACKDET_REM_DEB_SHIFT);
   mask |= DA7219_JACKDET_REM_DEB_MASK;
  }
  snd_soc_component_update_bits(component, DA7219_ACCDET_CONFIG_2, mask, cfg);

  snd_soc_component_write(component, DA7219_ACCDET_CONFIG_3,
         aad_pdata->a_d_btn_thr);
  snd_soc_component_write(component, DA7219_ACCDET_CONFIG_4,
         aad_pdata->d_b_btn_thr);
  snd_soc_component_write(component, DA7219_ACCDET_CONFIG_5,
         aad_pdata->b_c_btn_thr);
  snd_soc_component_write(component, DA7219_ACCDET_CONFIG_6,
         aad_pdata->c_mic_btn_thr);

  cfg = 0;
  mask = 0;
  switch (aad_pdata->btn_avg) {
  case 160:
  case 159:
  case 158:
  case 157:
   cfg |= (aad_pdata->btn_avg <<
    DA7219_BUTTON_AVERAGE_SHIFT);
   mask |= DA7219_BUTTON_AVERAGE_MASK;
  }
  switch (aad_pdata->adc_1bit_rpt) {
  case 164:
  case 163:
  case 162:
  case 161:
   cfg |= (aad_pdata->adc_1bit_rpt <<
          DA7219_ADC_1_BIT_REPEAT_SHIFT);
   mask |= DA7219_ADC_1_BIT_REPEAT_MASK;
  }
  snd_soc_component_update_bits(component, DA7219_ACCDET_CONFIG_7, mask, cfg);
 }
}
