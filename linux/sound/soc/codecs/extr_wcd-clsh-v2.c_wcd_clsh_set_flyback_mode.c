
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int CLS_H_HIFI ;
 int WCD9XXX_A_ANA_RX_SUPPLIES ;
 int WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_DEFAULT ;
 int WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_MASK ;
 int WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_UHQA ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static inline void wcd_clsh_set_flyback_mode(struct snd_soc_component *comp,
          int mode)
{

 if (mode == CLS_H_HIFI)
  snd_soc_component_update_bits(comp, WCD9XXX_A_ANA_RX_SUPPLIES,
     WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_MASK,
     WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_UHQA);
 else
  snd_soc_component_update_bits(comp, WCD9XXX_A_ANA_RX_SUPPLIES,
     WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_MASK,
     WCD9XXX_A_ANA_RX_VNEG_PWR_LVL_DEFAULT);
}
