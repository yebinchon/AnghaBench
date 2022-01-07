
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int WCD9XXX_RX_BIAS_FLYB_BUFF ;
 int WCD9XXX_RX_BIAS_FLYB_VNEG_5_UA_MASK ;
 int WCD9XXX_RX_BIAS_FLYB_VPOS_5_UA_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void wcd_clsh_set_flyback_current(struct snd_soc_component *comp,
      int mode)
{

 snd_soc_component_update_bits(comp, WCD9XXX_RX_BIAS_FLYB_BUFF,
    WCD9XXX_RX_BIAS_FLYB_VPOS_5_UA_MASK, 0x0A);
 snd_soc_component_update_bits(comp, WCD9XXX_RX_BIAS_FLYB_BUFF,
    WCD9XXX_RX_BIAS_FLYB_VNEG_5_UA_MASK, 0x0A);

 usleep_range(100, 110);
}
