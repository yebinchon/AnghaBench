
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct da7218_priv {scalar_t__ dev_id; int supplies; scalar_t__ irq; int * mclk; int pdata; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;


 scalar_t__ DA7217_DEV_ID ;
 int DA7218_BEEP_CYCLES_MASK ;
 int DA7218_CP_CTRL ;
 int DA7218_CP_SMALL_SWITCH_FREQ_EN_MASK ;
 int DA7218_DGS_GAIN_CTRL ;
 int DA7218_DGS_RAMP_EN_MASK ;
 int DA7218_DROUTING_OUTFILT_1L ;
 int DA7218_DROUTING_OUTFILT_1R ;
 int DA7218_EVENT_MASK ;
 int DA7218_HPLDET_JACK_EVENT_IRQ_MSK_MASK ;
 int DA7218_HP_AMP_DIFF_MODE_EN_MASK ;
 int DA7218_HP_DIFF_CTRL ;
 int DA7218_HP_L_AMP_RAMP_EN_MASK ;
 int DA7218_HP_L_CTRL ;
 int DA7218_HP_R_AMP_RAMP_EN_MASK ;
 int DA7218_HP_R_CTRL ;
 int DA7218_IN_1L_FILTER_CTRL ;
 int DA7218_IN_1L_RAMP_EN_MASK ;
 int DA7218_IN_1R_FILTER_CTRL ;
 int DA7218_IN_1R_RAMP_EN_MASK ;
 int DA7218_IN_2L_FILTER_CTRL ;
 int DA7218_IN_2L_RAMP_EN_MASK ;
 int DA7218_IN_2R_FILTER_CTRL ;
 int DA7218_IN_2R_RAMP_EN_MASK ;
 int DA7218_MIXIN_1_AMP_RAMP_EN_MASK ;
 int DA7218_MIXIN_1_CTRL ;
 int DA7218_MIXIN_2_AMP_RAMP_EN_MASK ;
 int DA7218_MIXIN_2_CTRL ;
 int DA7218_NUM_SUPPLIES ;
 int DA7218_OUT_1L_FILTER_CTRL ;
 int DA7218_OUT_1L_RAMP_EN_MASK ;
 int DA7218_OUT_1R_FILTER_CTRL ;
 int DA7218_OUT_1R_RAMP_EN_MASK ;
 int DA7218_PC_COUNT ;
 int DA7218_PC_FREERUN_MASK ;
 int DA7218_TONE_GEN_CYCLES ;
 int ENOENT ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int da7218_handle_pdata (struct snd_soc_component*) ;
 int da7218_handle_supplies (struct snd_soc_component*) ;
 int da7218_irq_thread ;
 int da7218_of_to_pdata (struct snd_soc_component*) ;
 int dev_err (TYPE_1__*,char*,scalar_t__,int) ;
 int dev_get_platdata (TYPE_1__*) ;
 int * devm_clk_get (TYPE_1__*,char*) ;
 int devm_request_threaded_irq (TYPE_1__*,scalar_t__,int *,int ,int,char*,struct snd_soc_component*) ;
 int regulator_bulk_disable (int ,int ) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int da7218_probe(struct snd_soc_component *component)
{
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 int ret;


 ret = da7218_handle_supplies(component);
 if (ret)
  return ret;


 if (component->dev->of_node)
  da7218->pdata = da7218_of_to_pdata(component);
 else
  da7218->pdata = dev_get_platdata(component->dev);

 da7218_handle_pdata(component);


 da7218->mclk = devm_clk_get(component->dev, "mclk");
 if (IS_ERR(da7218->mclk)) {
  if (PTR_ERR(da7218->mclk) != -ENOENT) {
   ret = PTR_ERR(da7218->mclk);
   goto err_disable_reg;
  } else {
   da7218->mclk = ((void*)0);
  }
 }


 snd_soc_component_write(component, DA7218_PC_COUNT, DA7218_PC_FREERUN_MASK);





 snd_soc_component_write(component, DA7218_DROUTING_OUTFILT_1L, 0);
 snd_soc_component_write(component, DA7218_DROUTING_OUTFILT_1R, 0);


 snd_soc_component_update_bits(component, DA7218_CP_CTRL,
       DA7218_CP_SMALL_SWITCH_FREQ_EN_MASK, 0);


 snd_soc_component_update_bits(component, DA7218_MIXIN_1_CTRL,
       DA7218_MIXIN_1_AMP_RAMP_EN_MASK,
       DA7218_MIXIN_1_AMP_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_MIXIN_2_CTRL,
       DA7218_MIXIN_2_AMP_RAMP_EN_MASK,
       DA7218_MIXIN_2_AMP_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_IN_1L_FILTER_CTRL,
       DA7218_IN_1L_RAMP_EN_MASK,
       DA7218_IN_1L_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_IN_1R_FILTER_CTRL,
       DA7218_IN_1R_RAMP_EN_MASK,
       DA7218_IN_1R_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_IN_2L_FILTER_CTRL,
       DA7218_IN_2L_RAMP_EN_MASK,
       DA7218_IN_2L_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_IN_2R_FILTER_CTRL,
       DA7218_IN_2R_RAMP_EN_MASK,
       DA7218_IN_2R_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_DGS_GAIN_CTRL,
       DA7218_DGS_RAMP_EN_MASK, DA7218_DGS_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_OUT_1L_FILTER_CTRL,
       DA7218_OUT_1L_RAMP_EN_MASK,
       DA7218_OUT_1L_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_OUT_1R_FILTER_CTRL,
       DA7218_OUT_1R_RAMP_EN_MASK,
       DA7218_OUT_1R_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_HP_L_CTRL,
       DA7218_HP_L_AMP_RAMP_EN_MASK,
       DA7218_HP_L_AMP_RAMP_EN_MASK);
 snd_soc_component_update_bits(component, DA7218_HP_R_CTRL,
       DA7218_HP_R_AMP_RAMP_EN_MASK,
       DA7218_HP_R_AMP_RAMP_EN_MASK);


 snd_soc_component_write(component, DA7218_TONE_GEN_CYCLES, DA7218_BEEP_CYCLES_MASK);


 if (da7218->dev_id == DA7217_DEV_ID) {
  snd_soc_component_update_bits(component, DA7218_HP_DIFF_CTRL,
        DA7218_HP_AMP_DIFF_MODE_EN_MASK,
        DA7218_HP_AMP_DIFF_MODE_EN_MASK);


  snd_soc_component_write(component, DA7218_EVENT_MASK,
         DA7218_HPLDET_JACK_EVENT_IRQ_MSK_MASK);
 }

 if (da7218->irq) {
  ret = devm_request_threaded_irq(component->dev, da7218->irq, ((void*)0),
      da7218_irq_thread,
      IRQF_TRIGGER_LOW | IRQF_ONESHOT,
      "da7218", component);
  if (ret != 0) {
   dev_err(component->dev, "Failed to request IRQ %d: %d\n",
    da7218->irq, ret);
   goto err_disable_reg;
  }

 }

 return 0;

err_disable_reg:
 regulator_bulk_disable(DA7218_NUM_SUPPLIES, da7218->supplies);

 return ret;
}
