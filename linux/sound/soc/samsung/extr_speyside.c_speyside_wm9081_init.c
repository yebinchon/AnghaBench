
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int MCLK_AUDIO_RATE ;
 int WM9081_SYSCLK_MCLK ;
 int snd_soc_component_set_sysclk (struct snd_soc_component*,int ,int ,int ,int ) ;

__attribute__((used)) static int speyside_wm9081_init(struct snd_soc_component *component)
{

 return snd_soc_component_set_sysclk(component, WM9081_SYSCLK_MCLK, 0,
     MCLK_AUDIO_RATE, 0);
}
