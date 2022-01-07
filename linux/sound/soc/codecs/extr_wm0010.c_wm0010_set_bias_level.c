
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm0010_priv {int lock; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int const snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm0010_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm0010_boot (struct snd_soc_component*) ;
 int wm0010_halt (struct snd_soc_component*) ;

__attribute__((used)) static int wm0010_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm0010_priv *wm0010 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  if (snd_soc_component_get_bias_level(component) == 129)
   wm0010_boot(component);
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 129) {
   mutex_lock(&wm0010->lock);
   wm0010_halt(component);
   mutex_unlock(&wm0010->lock);
  }
  break;
 case 131:
  break;
 }

 return 0;
}
