
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int WM8711_ACTIVE ;
 int snd_soc_component_is_active (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void wm8711_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;


 if (!snd_soc_component_is_active(component)) {
  udelay(50);
  snd_soc_component_write(component, WM8711_ACTIVE, 0x0);
 }
}
