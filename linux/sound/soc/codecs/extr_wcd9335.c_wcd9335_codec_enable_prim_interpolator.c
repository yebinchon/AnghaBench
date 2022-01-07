
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct wcd9335_codec {int* prim_int_users; } ;
struct snd_soc_component {int dev; } ;




 int WCD9335_CDC_RX_CLK_DISABLE ;
 int WCD9335_CDC_RX_CLK_ENABLE ;
 int WCD9335_CDC_RX_CLK_EN_MASK ;
 int WCD9335_CDC_RX_PGA_MUTE_ENABLE ;
 int WCD9335_CDC_RX_PGA_MUTE_EN_MASK ;
 int WCD9335_CDC_RX_RESET_DISABLE ;
 int WCD9335_CDC_RX_RESET_ENABLE ;
 int WCD9335_CDC_RX_RESET_MASK ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int ,int ) ;
 int wcd9335_codec_hd2_control (struct snd_soc_component*,int,int) ;
 int wcd9335_interp_get_primary_reg (size_t,size_t*) ;

__attribute__((used)) static int wcd9335_codec_enable_prim_interpolator(
      struct snd_soc_component *comp,
      u16 reg, int event)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(comp->dev);
 u16 ind = 0;
 int prim_int_reg = wcd9335_interp_get_primary_reg(reg, &ind);

 switch (event) {
 case 128:
  wcd->prim_int_users[ind]++;
  if (wcd->prim_int_users[ind] == 1) {
   snd_soc_component_update_bits(comp, prim_int_reg,
     WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
     WCD9335_CDC_RX_PGA_MUTE_ENABLE);
   wcd9335_codec_hd2_control(comp, prim_int_reg, event);
   snd_soc_component_update_bits(comp, prim_int_reg,
     WCD9335_CDC_RX_CLK_EN_MASK,
     WCD9335_CDC_RX_CLK_ENABLE);
  }

  if ((reg != prim_int_reg) &&
   ((snd_soc_component_read32(comp, prim_int_reg)) &
    WCD9335_CDC_RX_PGA_MUTE_EN_MASK))
   snd_soc_component_update_bits(comp, reg,
      WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
      WCD9335_CDC_RX_PGA_MUTE_ENABLE);
  break;
 case 129:
  wcd->prim_int_users[ind]--;
  if (wcd->prim_int_users[ind] == 0) {
   snd_soc_component_update_bits(comp, prim_int_reg,
     WCD9335_CDC_RX_CLK_EN_MASK,
     WCD9335_CDC_RX_CLK_DISABLE);
   snd_soc_component_update_bits(comp, prim_int_reg,
     WCD9335_CDC_RX_RESET_MASK,
     WCD9335_CDC_RX_RESET_ENABLE);
   snd_soc_component_update_bits(comp, prim_int_reg,
     WCD9335_CDC_RX_RESET_MASK,
     WCD9335_CDC_RX_RESET_DISABLE);
   wcd9335_codec_hd2_control(comp, prim_int_reg, event);
  }
  break;
 };

 return 0;
}
