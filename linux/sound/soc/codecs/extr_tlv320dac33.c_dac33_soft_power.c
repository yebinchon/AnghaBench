
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 int DAC33_DACLPDNB ;
 int DAC33_DACRPDNB ;
 int DAC33_OSCPDNB ;
 int DAC33_PDNALLB ;
 int DAC33_PWR_CTRL ;
 int dac33_read_reg_cache (struct snd_soc_component*,int ) ;
 int dac33_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static inline void dac33_soft_power(struct snd_soc_component *component, int power)
{
 u8 reg;

 reg = dac33_read_reg_cache(component, DAC33_PWR_CTRL);
 if (power)
  reg |= DAC33_PDNALLB;
 else
  reg &= ~(DAC33_PDNALLB | DAC33_OSCPDNB |
    DAC33_DACRPDNB | DAC33_DACLPDNB);
 dac33_write(component, DAC33_PWR_CTRL, reg);
}
