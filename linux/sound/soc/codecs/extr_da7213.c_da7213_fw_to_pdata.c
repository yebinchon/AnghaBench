
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;
struct da7213_platform_data {int dmic_clk_rate; int dmic_samplephase; int dmic_data_sel; void* micbias2_lvl; void* micbias1_lvl; } ;


 int DA7213_DMIC_CLK_3_0MHZ ;
 int DA7213_DMIC_DATA_LRISE_RFALL ;
 int DA7213_DMIC_SAMPLE_ON_CLKEDGE ;
 void* DA7213_MICBIAS_2_2V ;
 int GFP_KERNEL ;
 int da7213_of_dmic_clkrate (struct snd_soc_component*,int ) ;
 int da7213_of_dmic_data_sel (struct snd_soc_component*,char const*) ;
 int da7213_of_dmic_samplephase (struct snd_soc_component*,char const*) ;
 void* da7213_of_micbias_lvl (struct snd_soc_component*,int ) ;
 int device_property_read_string (struct device*,char*,char const**) ;
 scalar_t__ device_property_read_u32 (struct device*,char*,int *) ;
 struct da7213_platform_data* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static struct da7213_platform_data
 *da7213_fw_to_pdata(struct snd_soc_component *component)
{
 struct device *dev = component->dev;
 struct da7213_platform_data *pdata;
 const char *fw_str;
 u32 fw_val32;

 pdata = devm_kzalloc(component->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 if (device_property_read_u32(dev, "dlg,micbias1-lvl", &fw_val32) >= 0)
  pdata->micbias1_lvl = da7213_of_micbias_lvl(component, fw_val32);
 else
  pdata->micbias1_lvl = DA7213_MICBIAS_2_2V;

 if (device_property_read_u32(dev, "dlg,micbias2-lvl", &fw_val32) >= 0)
  pdata->micbias2_lvl = da7213_of_micbias_lvl(component, fw_val32);
 else
  pdata->micbias2_lvl = DA7213_MICBIAS_2_2V;

 if (!device_property_read_string(dev, "dlg,dmic-data-sel", &fw_str))
  pdata->dmic_data_sel = da7213_of_dmic_data_sel(component, fw_str);
 else
  pdata->dmic_data_sel = DA7213_DMIC_DATA_LRISE_RFALL;

 if (!device_property_read_string(dev, "dlg,dmic-samplephase", &fw_str))
  pdata->dmic_samplephase =
   da7213_of_dmic_samplephase(component, fw_str);
 else
  pdata->dmic_samplephase = DA7213_DMIC_SAMPLE_ON_CLKEDGE;

 if (device_property_read_u32(dev, "dlg,dmic-clkrate", &fw_val32) >= 0)
  pdata->dmic_clk_rate = da7213_of_dmic_clkrate(component, fw_val32);
 else
  pdata->dmic_clk_rate = DA7213_DMIC_CLK_3_0MHZ;

 return pdata;
}
