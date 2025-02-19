
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wcd9335_codec {int * comp_enabled; } ;
struct snd_soc_component {int dev; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_OFF (int) ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int WCD9335_CDC_COMPANDER1_CTL (int) ;
 int WCD9335_CDC_COMPANDER_CLK_DISABLE ;
 int WCD9335_CDC_COMPANDER_CLK_ENABLE ;
 int WCD9335_CDC_COMPANDER_CLK_EN_MASK ;
 int WCD9335_CDC_COMPANDER_HALT ;
 int WCD9335_CDC_COMPANDER_HALT_MASK ;
 int WCD9335_CDC_COMPANDER_NOHALT ;
 int WCD9335_CDC_COMPANDER_SOFT_RST_DISABLE ;
 int WCD9335_CDC_COMPANDER_SOFT_RST_ENABLE ;
 int WCD9335_CDC_COMPANDER_SOFT_RST_MASK ;
 int WCD9335_CDC_RX1_RX_PATH_CFG (int) ;
 int WCD9335_CDC_RX_PATH_CFG_CMP_DISABLE ;
 int WCD9335_CDC_RX_PATH_CFG_CMP_ENABLE ;
 int WCD9335_CDC_RX_PATH_CFG_CMP_EN_MASK ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int wcd9335_config_compander(struct snd_soc_component *component,
        int interp_n, int event)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);
 int comp;
 u16 comp_ctl0_reg, rx_path_cfg0_reg;


 if (!interp_n)
  return 0;

 comp = interp_n - 1;
 if (!wcd->comp_enabled[comp])
  return 0;

 comp_ctl0_reg = WCD9335_CDC_COMPANDER1_CTL(comp);
 rx_path_cfg0_reg = WCD9335_CDC_RX1_RX_PATH_CFG(comp);

 if (SND_SOC_DAPM_EVENT_ON(event)) {

  snd_soc_component_update_bits(component, comp_ctl0_reg,
     WCD9335_CDC_COMPANDER_CLK_EN_MASK,
     WCD9335_CDC_COMPANDER_CLK_ENABLE);

  snd_soc_component_update_bits(component, comp_ctl0_reg,
     WCD9335_CDC_COMPANDER_SOFT_RST_MASK,
     WCD9335_CDC_COMPANDER_SOFT_RST_ENABLE);
  snd_soc_component_update_bits(component, comp_ctl0_reg,
    WCD9335_CDC_COMPANDER_SOFT_RST_MASK,
    WCD9335_CDC_COMPANDER_SOFT_RST_DISABLE);

  snd_soc_component_update_bits(component, rx_path_cfg0_reg,
     WCD9335_CDC_RX_PATH_CFG_CMP_EN_MASK,
     WCD9335_CDC_RX_PATH_CFG_CMP_ENABLE);
 }

 if (SND_SOC_DAPM_EVENT_OFF(event)) {
  snd_soc_component_update_bits(component, comp_ctl0_reg,
     WCD9335_CDC_COMPANDER_HALT_MASK,
     WCD9335_CDC_COMPANDER_HALT);
  snd_soc_component_update_bits(component, rx_path_cfg0_reg,
     WCD9335_CDC_RX_PATH_CFG_CMP_EN_MASK,
     WCD9335_CDC_RX_PATH_CFG_CMP_DISABLE);

  snd_soc_component_update_bits(component, comp_ctl0_reg,
     WCD9335_CDC_COMPANDER_SOFT_RST_MASK,
     WCD9335_CDC_COMPANDER_SOFT_RST_ENABLE);
  snd_soc_component_update_bits(component, comp_ctl0_reg,
    WCD9335_CDC_COMPANDER_SOFT_RST_MASK,
    WCD9335_CDC_COMPANDER_SOFT_RST_DISABLE);
  snd_soc_component_update_bits(component, comp_ctl0_reg,
     WCD9335_CDC_COMPANDER_CLK_EN_MASK,
     WCD9335_CDC_COMPANDER_CLK_DISABLE);
  snd_soc_component_update_bits(component, comp_ctl0_reg,
     WCD9335_CDC_COMPANDER_HALT_MASK,
     WCD9335_CDC_COMPANDER_NOHALT);
 }

 return 0;
}
