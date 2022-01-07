
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct max98090_priv {unsigned int sysclk; unsigned int pclk; int master; int devtype; int pll_work; int pll_det_disable_work; int pll_det_enable_work; int jack_work; int jack_state; scalar_t__ pa2en; scalar_t__ pa1en; scalar_t__ lin_state; struct max98090_cdata* dai; struct snd_soc_component* component; int mclk; } ;
struct max98090_cdata {unsigned int rate; unsigned int fmt; } ;
typedef enum max98090_type { ____Placeholder_max98090_type } max98090_type ;


 int EPROBE_DEFER ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int M98090_ADCHP_MASK ;
 int M98090_ADCHP_SHIFT ;
 int M98090_DACHP_MASK ;
 int M98090_DACHP_SHIFT ;
 int M98090_JACK_STATE_NO_HEADSET ;
 int M98090_JDEB_25MS ;
 int M98090_JDETEN_MASK ;
 unsigned int M98090_MBVSEL_2V8 ;
 int M98090_MBVSEL_MASK ;
 int M98090_PERFMODE_MASK ;
 unsigned int M98090_PERFMODE_SHIFT ;
 int M98090_REG_ADC_CONTROL ;
 int M98090_REG_BIAS_CONTROL ;
 int M98090_REG_DAC_CONTROL ;
 int M98090_REG_DEVICE_STATUS ;
 int M98090_REG_JACK_DETECT ;
 int M98090_REG_MIC_BIAS_VOLTAGE ;
 int M98090_REG_REVISION_ID ;
 int M98090_REVA ;
 int M98090_VCM_MODE_MASK ;
 int M98091_REVA ;
 int MAX98090 ;
 int MAX98091 ;
 int PTR_ERR (int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,unsigned int) ;
 int dev_info (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int device_property_read_u32 (int ,char*,unsigned int*) ;
 int devm_clk_get (int ,char*) ;
 int max98090_add_widgets (struct snd_soc_component*) ;
 int max98090_jack_work ;
 int max98090_pll_det_disable_work ;
 int max98090_pll_det_enable_work ;
 int max98090_pll_work ;
 int max98090_reset (struct max98090_priv*) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int max98090_probe(struct snd_soc_component *component)
{
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);
 struct max98090_cdata *cdata;
 enum max98090_type devtype;
 int ret = 0;
 int err;
 unsigned int micbias;

 dev_dbg(component->dev, "max98090_probe\n");

 max98090->mclk = devm_clk_get(component->dev, "mclk");
 if (PTR_ERR(max98090->mclk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 max98090->component = component;


 max98090_reset(max98090);



 max98090->sysclk = (unsigned)-1;
 max98090->pclk = (unsigned)-1;
 max98090->master = 0;

 cdata = &max98090->dai[0];
 cdata->rate = (unsigned)-1;
 cdata->fmt = (unsigned)-1;

 max98090->lin_state = 0;
 max98090->pa1en = 0;
 max98090->pa2en = 0;

 ret = snd_soc_component_read32(component, M98090_REG_REVISION_ID);
 if (ret < 0) {
  dev_err(component->dev, "Failed to read device revision: %d\n",
   ret);
  goto err_access;
 }

 if ((ret >= M98090_REVA) && (ret <= M98090_REVA + 0x0f)) {
  devtype = MAX98090;
  dev_info(component->dev, "MAX98090 REVID=0x%02x\n", ret);
 } else if ((ret >= M98091_REVA) && (ret <= M98091_REVA + 0x0f)) {
  devtype = MAX98091;
  dev_info(component->dev, "MAX98091 REVID=0x%02x\n", ret);
 } else {
  devtype = MAX98090;
  dev_err(component->dev, "Unrecognized revision 0x%02x\n", ret);
 }

 if (max98090->devtype != devtype) {
  dev_warn(component->dev, "Mismatch in DT specified CODEC type.\n");
  max98090->devtype = devtype;
 }

 max98090->jack_state = M98090_JACK_STATE_NO_HEADSET;

 INIT_DELAYED_WORK(&max98090->jack_work, max98090_jack_work);
 INIT_DELAYED_WORK(&max98090->pll_det_enable_work,
     max98090_pll_det_enable_work);
 INIT_WORK(&max98090->pll_det_disable_work,
    max98090_pll_det_disable_work);
 INIT_WORK(&max98090->pll_work, max98090_pll_work);


 snd_soc_component_write(component, M98090_REG_JACK_DETECT,
  M98090_JDETEN_MASK | M98090_JDEB_25MS);






 snd_soc_component_read32(component, M98090_REG_DEVICE_STATUS);


 snd_soc_component_update_bits(component, M98090_REG_DAC_CONTROL,
  M98090_DACHP_MASK,
  1 << M98090_DACHP_SHIFT);
 snd_soc_component_update_bits(component, M98090_REG_DAC_CONTROL,
  M98090_PERFMODE_MASK,
  0 << M98090_PERFMODE_SHIFT);
 snd_soc_component_update_bits(component, M98090_REG_ADC_CONTROL,
  M98090_ADCHP_MASK,
  1 << M98090_ADCHP_SHIFT);


 snd_soc_component_write(component, M98090_REG_BIAS_CONTROL,
  M98090_VCM_MODE_MASK);

 err = device_property_read_u32(component->dev, "maxim,micbias", &micbias);
 if (err) {
  micbias = M98090_MBVSEL_2V8;
  dev_info(component->dev, "use default 2.8v micbias\n");
 } else if (micbias > M98090_MBVSEL_2V8) {
  dev_err(component->dev, "micbias out of range 0x%x\n", micbias);
  micbias = M98090_MBVSEL_2V8;
 }

 snd_soc_component_update_bits(component, M98090_REG_MIC_BIAS_VOLTAGE,
  M98090_MBVSEL_MASK, micbias);

 max98090_add_widgets(component);

err_access:
 return ret;
}
