
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int AIC32X4_DOSRLSB ;
 int AIC32X4_DOSRMSB ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int aic32x4_set_dosr(struct snd_soc_component *component, u16 dosr)
{
 snd_soc_component_write(component, AIC32X4_DOSRMSB, dosr >> 8);
 snd_soc_component_write(component, AIC32X4_DOSRLSB,
        (dosr & 0xff));

 return 0;
}
