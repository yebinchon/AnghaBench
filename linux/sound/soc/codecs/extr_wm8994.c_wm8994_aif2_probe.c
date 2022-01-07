
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8994_GPIO_3 ;
 int WM8994_GPIO_4 ;
 int WM8994_GPIO_5 ;
 int WM8994_GPN_PD ;
 int WM8994_GPN_PU ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;

__attribute__((used)) static int wm8994_aif2_probe(struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;


 snd_soc_component_update_bits(component, WM8994_GPIO_3,
       WM8994_GPN_PU | WM8994_GPN_PD, 0);
 snd_soc_component_update_bits(component, WM8994_GPIO_4,
       WM8994_GPN_PU | WM8994_GPN_PD, 0);
 snd_soc_component_update_bits(component, WM8994_GPIO_5,
       WM8994_GPN_PU | WM8994_GPN_PD, 0);

 return 0;
}
