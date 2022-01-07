
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int WM8400_CODEC_ENA ;
 int WM8400_POWER_MANAGEMENT_1 ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void wm8400_component_remove(struct snd_soc_component *component)
{
 u16 reg;

 reg = snd_soc_component_read32(component, WM8400_POWER_MANAGEMENT_1);
 snd_soc_component_write(component, WM8400_POWER_MANAGEMENT_1,
       reg & (~WM8400_CODEC_ENA));
}
