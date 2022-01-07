
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 int AIC32X4_AOSR ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int aic32x4_set_aosr(struct snd_soc_component *component, u8 aosr)
{
 return snd_soc_component_write(component, AIC32X4_AOSR, aosr);
}
