
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int CLS_AB ;
 int WCD9XXX_A_ANA_RX_REGULATOR_MODE_CLS_AB ;
 int WCD9XXX_A_ANA_RX_REGULATOR_MODE_CLS_H ;
 int WCD9XXX_A_ANA_RX_REGULATOR_MODE_MASK ;
 int WCD9XXX_A_ANA_RX_SUPPLIES ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void wcd_clsh_set_buck_regulator_mode(struct snd_soc_component *comp,
          int mode)
{
 if (mode == CLS_AB)
  snd_soc_component_update_bits(comp, WCD9XXX_A_ANA_RX_SUPPLIES,
     WCD9XXX_A_ANA_RX_REGULATOR_MODE_MASK,
     WCD9XXX_A_ANA_RX_REGULATOR_MODE_CLS_AB);
 else
  snd_soc_component_update_bits(comp, WCD9XXX_A_ANA_RX_SUPPLIES,
     WCD9XXX_A_ANA_RX_REGULATOR_MODE_MASK,
     WCD9XXX_A_ANA_RX_REGULATOR_MODE_CLS_H);
}
