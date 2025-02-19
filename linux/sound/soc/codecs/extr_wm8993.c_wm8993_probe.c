
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_retune_configs; scalar_t__ lineout2_diff; scalar_t__ lineout1_diff; int micbias2_lvl; int micbias1_lvl; int micbias2_delay; int micbias1_delay; int jd_thr; int jd_scthr; int lineout2fb; int lineout1fb; } ;
struct TYPE_3__ {int hp_startup_mode; int dcs_codes_l; int dcs_codes_r; int series_startup; } ;
struct wm8993_priv {TYPE_2__ pdata; TYPE_1__ hubs_data; } ;
struct snd_soc_dapm_context {int idle_bias_off; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int WM8993_ADC_VU ;
 int WM8993_ANALOGUE_HP_0 ;
 int WM8993_CLOCKING_4 ;
 int WM8993_DAC_VU ;
 int WM8993_HPOUT1_AUTO_PU ;
 int WM8993_RIGHT_ADC_DIGITAL_VOLUME ;
 int WM8993_RIGHT_DAC_DIGITAL_VOLUME ;
 int WM8993_SR_MODE ;
 int dev_dbg (int ,char*) ;
 int routes ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8993_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int wm8993_dapm_widgets ;
 int wm8993_eq_controls ;
 int wm8993_snd_controls ;
 int wm_hubs_add_analogue_controls (struct snd_soc_component*) ;
 int wm_hubs_add_analogue_routes (struct snd_soc_component*,scalar_t__,scalar_t__) ;
 int wm_hubs_handle_analogue_pdata (struct snd_soc_component*,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int wm8993_probe(struct snd_soc_component *component)
{
 struct wm8993_priv *wm8993 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 wm8993->hubs_data.hp_startup_mode = 1;
 wm8993->hubs_data.dcs_codes_l = -2;
 wm8993->hubs_data.dcs_codes_r = -2;
 wm8993->hubs_data.series_startup = 1;


 snd_soc_component_update_bits(component, WM8993_RIGHT_DAC_DIGITAL_VOLUME,
       WM8993_DAC_VU, WM8993_DAC_VU);
 snd_soc_component_update_bits(component, WM8993_RIGHT_ADC_DIGITAL_VOLUME,
       WM8993_ADC_VU, WM8993_ADC_VU);



 snd_soc_component_update_bits(component, WM8993_ANALOGUE_HP_0,
       WM8993_HPOUT1_AUTO_PU, 0);


 snd_soc_component_update_bits(component, WM8993_CLOCKING_4, WM8993_SR_MODE, 0);

 wm_hubs_handle_analogue_pdata(component, wm8993->pdata.lineout1_diff,
          wm8993->pdata.lineout2_diff,
          wm8993->pdata.lineout1fb,
          wm8993->pdata.lineout2fb,
          wm8993->pdata.jd_scthr,
          wm8993->pdata.jd_thr,
          wm8993->pdata.micbias1_delay,
          wm8993->pdata.micbias2_delay,
          wm8993->pdata.micbias1_lvl,
          wm8993->pdata.micbias2_lvl);

 snd_soc_add_component_controls(component, wm8993_snd_controls,
        ARRAY_SIZE(wm8993_snd_controls));
 if (wm8993->pdata.num_retune_configs != 0) {
  dev_dbg(component->dev, "Using ReTune Mobile\n");
 } else {
  dev_dbg(component->dev, "No ReTune Mobile, using normal EQ\n");
  snd_soc_add_component_controls(component, wm8993_eq_controls,
         ARRAY_SIZE(wm8993_eq_controls));
 }

 snd_soc_dapm_new_controls(dapm, wm8993_dapm_widgets,
      ARRAY_SIZE(wm8993_dapm_widgets));
 wm_hubs_add_analogue_controls(component);

 snd_soc_dapm_add_routes(dapm, routes, ARRAY_SIZE(routes));
 wm_hubs_add_analogue_routes(component, wm8993->pdata.lineout1_diff,
        wm8993->pdata.lineout2_diff);




 if (wm8993->pdata.lineout1_diff && wm8993->pdata.lineout2_diff)
  dapm->idle_bias_off = 1;

 return 0;

}
