
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int WCD9XXX_A_CDC_CLSH_CRC ;
 int WCD9XXX_A_CDC_CLSH_CRC_CLK_EN_MASK ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;

__attribute__((used)) static inline bool wcd_clsh_enable_status(struct snd_soc_component *comp)
{
 return snd_soc_component_read32(comp, WCD9XXX_A_CDC_CLSH_CRC) &
     WCD9XXX_A_CDC_CLSH_CRC_CLK_EN_MASK;
}
