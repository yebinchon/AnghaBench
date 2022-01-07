
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;
struct da7218_priv {scalar_t__ dev_id; scalar_t__ hp_single_supply; struct da7218_pdata* pdata; } ;
struct da7218_pdata {int micbias1_lvl; int micbias2_lvl; int mic1_amp_in_sel; int mic2_amp_in_sel; int dmic1_data_sel; int dmic1_samplephase; int dmic1_clk_rate; int dmic2_data_sel; int dmic2_samplephase; int dmic2_clk_rate; struct da7218_hpldet_pdata* hpldet_pdata; scalar_t__ hp_diff_single_supply; } ;
struct da7218_hpldet_pdata {int jack_rate; int jack_debounce; int jack_thr; scalar_t__ discharge; scalar_t__ hyst; scalar_t__ comp_inv; } ;


 scalar_t__ DA7217_DEV_ID ;
 scalar_t__ DA7218_DEV_ID ;
 int DA7218_DMIC_1_CLK_RATE_MASK ;
 int DA7218_DMIC_1_CLK_RATE_SHIFT ;
 int DA7218_DMIC_1_CTRL ;
 int DA7218_DMIC_1_DATA_SEL_MASK ;
 int DA7218_DMIC_1_DATA_SEL_SHIFT ;
 int DA7218_DMIC_1_SAMPLEPHASE_MASK ;
 int DA7218_DMIC_1_SAMPLEPHASE_SHIFT ;
 int DA7218_DMIC_2_CLK_RATE_MASK ;
 int DA7218_DMIC_2_CLK_RATE_SHIFT ;
 int DA7218_DMIC_2_CTRL ;
 int DA7218_DMIC_2_DATA_SEL_MASK ;
 int DA7218_DMIC_2_DATA_SEL_SHIFT ;
 int DA7218_DMIC_2_SAMPLEPHASE_MASK ;
 int DA7218_DMIC_2_SAMPLEPHASE_SHIFT ;






 int DA7218_HPLDET_COMP_INV_MASK ;
 int DA7218_HPLDET_CTRL ;
 int DA7218_HPLDET_DISCHARGE_EN_MASK ;
 int DA7218_HPLDET_HYST_EN_MASK ;
 int DA7218_HPLDET_JACK ;



 int DA7218_HPLDET_JACK_DEBOUNCE_MASK ;

 int DA7218_HPLDET_JACK_DEBOUNCE_SHIFT ;
 int DA7218_HPLDET_JACK_RATE_MASK ;
 int DA7218_HPLDET_JACK_RATE_SHIFT ;




 int DA7218_HPLDET_JACK_THR_MASK ;
 int DA7218_HPLDET_JACK_THR_SHIFT ;
 int DA7218_HP_AMP_SINGLE_SUPPLY_EN_MASK ;
 int DA7218_HP_DIFF_CTRL ;
 int DA7218_HP_DIFF_UNLOCK ;
 int DA7218_HP_DIFF_UNLOCK_VAL ;



 int DA7218_MICBIAS_1_LEVEL_SHIFT ;
 int DA7218_MICBIAS_1_LP_MODE_MASK ;





 int DA7218_MICBIAS_2_LEVEL_SHIFT ;
 int DA7218_MICBIAS_2_LP_MODE_MASK ;

 int DA7218_MICBIAS_CTRL ;
 int DA7218_MIC_1_SELECT ;
 int DA7218_MIC_2_SELECT ;



 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void da7218_handle_pdata(struct snd_soc_component *component)
{
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 struct da7218_pdata *pdata = da7218->pdata;

 if (pdata) {
  u8 micbias_lvl = 0, dmic_cfg = 0;


  switch (pdata->micbias1_lvl) {
  case 139:
   micbias_lvl |= DA7218_MICBIAS_1_LP_MODE_MASK;
   break;
  case 138:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
   micbias_lvl |= (pdata->micbias1_lvl <<
     DA7218_MICBIAS_1_LEVEL_SHIFT);
   break;
  }

  switch (pdata->micbias2_lvl) {
  case 139:
   micbias_lvl |= DA7218_MICBIAS_2_LP_MODE_MASK;
   break;
  case 138:
  case 137:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
   micbias_lvl |= (pdata->micbias2_lvl <<
      DA7218_MICBIAS_2_LEVEL_SHIFT);
   break;
  }

  snd_soc_component_write(component, DA7218_MICBIAS_CTRL, micbias_lvl);


  switch (pdata->mic1_amp_in_sel) {
  case 130:
  case 128:
  case 129:
   snd_soc_component_write(component, DA7218_MIC_1_SELECT,
          pdata->mic1_amp_in_sel);
   break;
  }

  switch (pdata->mic2_amp_in_sel) {
  case 130:
  case 128:
  case 129:
   snd_soc_component_write(component, DA7218_MIC_2_SELECT,
          pdata->mic2_amp_in_sel);
   break;
  }


  switch (pdata->dmic1_data_sel) {
  case 159:
  case 158:
   dmic_cfg |= (pdata->dmic1_data_sel <<
         DA7218_DMIC_1_DATA_SEL_SHIFT);
   break;
  }

  switch (pdata->dmic1_samplephase) {
  case 156:
  case 157:
   dmic_cfg |= (pdata->dmic1_samplephase <<
         DA7218_DMIC_1_SAMPLEPHASE_SHIFT);
   break;
  }

  switch (pdata->dmic1_clk_rate) {
  case 160:
  case 161:
   dmic_cfg |= (pdata->dmic1_clk_rate <<
         DA7218_DMIC_1_CLK_RATE_SHIFT);
   break;
  }

  snd_soc_component_update_bits(component, DA7218_DMIC_1_CTRL,
        DA7218_DMIC_1_DATA_SEL_MASK |
        DA7218_DMIC_1_SAMPLEPHASE_MASK |
        DA7218_DMIC_1_CLK_RATE_MASK, dmic_cfg);

  dmic_cfg = 0;
  switch (pdata->dmic2_data_sel) {
  case 159:
  case 158:
   dmic_cfg |= (pdata->dmic2_data_sel <<
         DA7218_DMIC_2_DATA_SEL_SHIFT);
   break;
  }

  switch (pdata->dmic2_samplephase) {
  case 156:
  case 157:
   dmic_cfg |= (pdata->dmic2_samplephase <<
         DA7218_DMIC_2_SAMPLEPHASE_SHIFT);
   break;
  }

  switch (pdata->dmic2_clk_rate) {
  case 160:
  case 161:
   dmic_cfg |= (pdata->dmic2_clk_rate <<
         DA7218_DMIC_2_CLK_RATE_SHIFT);
   break;
  }

  snd_soc_component_update_bits(component, DA7218_DMIC_2_CTRL,
        DA7218_DMIC_2_DATA_SEL_MASK |
        DA7218_DMIC_2_SAMPLEPHASE_MASK |
        DA7218_DMIC_2_CLK_RATE_MASK, dmic_cfg);


  if (da7218->dev_id == DA7217_DEV_ID) {
   da7218->hp_single_supply =
    pdata->hp_diff_single_supply;

   if (da7218->hp_single_supply) {
    snd_soc_component_write(component, DA7218_HP_DIFF_UNLOCK,
           DA7218_HP_DIFF_UNLOCK_VAL);
    snd_soc_component_update_bits(component, DA7218_HP_DIFF_CTRL,
          DA7218_HP_AMP_SINGLE_SUPPLY_EN_MASK,
          DA7218_HP_AMP_SINGLE_SUPPLY_EN_MASK);
   }
  }


  if ((da7218->dev_id == DA7218_DEV_ID) &&
      (pdata->hpldet_pdata)) {
   struct da7218_hpldet_pdata *hpldet_pdata =
    pdata->hpldet_pdata;
   u8 hpldet_cfg = 0;

   switch (hpldet_pdata->jack_rate) {
   case 146:
   case 151:
   case 149:
   case 147:
   case 144:
   case 150:
   case 148:
   case 145:
    hpldet_cfg |=
     (hpldet_pdata->jack_rate <<
      DA7218_HPLDET_JACK_RATE_SHIFT);
    break;
   }

   switch (hpldet_pdata->jack_debounce) {
   case 152:
   case 155:
   case 154:
   case 153:
    hpldet_cfg |=
     (hpldet_pdata->jack_debounce <<
      DA7218_HPLDET_JACK_DEBOUNCE_SHIFT);
    break;
   }

   switch (hpldet_pdata->jack_thr) {
   case 143:
   case 142:
   case 141:
   case 140:
    hpldet_cfg |=
     (hpldet_pdata->jack_thr <<
      DA7218_HPLDET_JACK_THR_SHIFT);
    break;
   }
   snd_soc_component_update_bits(component, DA7218_HPLDET_JACK,
         DA7218_HPLDET_JACK_RATE_MASK |
         DA7218_HPLDET_JACK_DEBOUNCE_MASK |
         DA7218_HPLDET_JACK_THR_MASK,
         hpldet_cfg);

   hpldet_cfg = 0;
   if (hpldet_pdata->comp_inv)
    hpldet_cfg |= DA7218_HPLDET_COMP_INV_MASK;

   if (hpldet_pdata->hyst)
    hpldet_cfg |= DA7218_HPLDET_HYST_EN_MASK;

   if (hpldet_pdata->discharge)
    hpldet_cfg |= DA7218_HPLDET_DISCHARGE_EN_MASK;

   snd_soc_component_write(component, DA7218_HPLDET_CTRL, hpldet_cfg);
  }
 }
}
