
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8916_wcd_analog_priv {int hphl_jack_type_normally_open; int gnd_jack_type_normally_open; int mbhc_btn_enabled; int * vref_btn_micb; int * vref_btn_cs; int micbias_mv; void* micbias2_cap_mode; void* micbias1_cap_mode; } ;
struct device {int of_node; } ;


 int MBHC_MAX_BUTTONS ;
 void* MICB_1_EN_EXT_BYP_CAP ;
 void* MICB_1_EN_NO_EXT_BYP_CAP ;
 int dev_err (struct device*,char*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int of_property_read_u32_array (int ,char*,int *,int ) ;

__attribute__((used)) static int pm8916_wcd_analog_parse_dt(struct device *dev,
           struct pm8916_wcd_analog_priv *priv)
{
 int rval;

 if (of_property_read_bool(dev->of_node, "qcom,micbias1-ext-cap"))
  priv->micbias1_cap_mode = MICB_1_EN_EXT_BYP_CAP;
 else
  priv->micbias1_cap_mode = MICB_1_EN_NO_EXT_BYP_CAP;

 if (of_property_read_bool(dev->of_node, "qcom,micbias2-ext-cap"))
  priv->micbias2_cap_mode = MICB_1_EN_EXT_BYP_CAP;
 else
  priv->micbias2_cap_mode = MICB_1_EN_NO_EXT_BYP_CAP;

 of_property_read_u32(dev->of_node, "qcom,micbias-lvl",
        &priv->micbias_mv);

 if (of_property_read_bool(dev->of_node,
      "qcom,hphl-jack-type-normally-open"))
  priv->hphl_jack_type_normally_open = 1;
 else
  priv->hphl_jack_type_normally_open = 0;

 if (of_property_read_bool(dev->of_node,
      "qcom,gnd-jack-type-normally-open"))
  priv->gnd_jack_type_normally_open = 1;
 else
  priv->gnd_jack_type_normally_open = 0;

 priv->mbhc_btn_enabled = 1;
 rval = of_property_read_u32_array(dev->of_node,
       "qcom,mbhc-vthreshold-low",
       &priv->vref_btn_cs[0],
       MBHC_MAX_BUTTONS);
 if (rval < 0) {
  priv->mbhc_btn_enabled = 0;
 } else {
  rval = of_property_read_u32_array(dev->of_node,
        "qcom,mbhc-vthreshold-high",
        &priv->vref_btn_micb[0],
        MBHC_MAX_BUTTONS);
  if (rval < 0)
   priv->mbhc_btn_enabled = 0;
 }

 if (!priv->mbhc_btn_enabled)
  dev_err(dev,
   "DT property missing, MBHC btn detection disabled\n");


 return 0;
}
