
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8776_DACMUTE ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8776_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;

 return snd_soc_component_write(component, WM8776_DACMUTE, !!mute);
}
