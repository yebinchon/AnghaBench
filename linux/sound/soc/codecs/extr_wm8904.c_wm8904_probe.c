
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8904_priv {int devtype; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int capture; } ;


 int EINVAL ;


 int dev_err (int ,char*,int) ;
 int memset (int *,int ,int) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8904_add_widgets (struct snd_soc_component*) ;
 TYPE_1__ wm8904_dai ;
 int wm8904_handle_pdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8904_probe(struct snd_soc_component *component)
{
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);

 switch (wm8904->devtype) {
 case 129:
  break;
 case 128:
  memset(&wm8904_dai.capture, 0, sizeof(wm8904_dai.capture));
  break;
 default:
  dev_err(component->dev, "Unknown device type %d\n",
   wm8904->devtype);
  return -EINVAL;
 }

 wm8904_handle_pdata(component);

 wm8904_add_widgets(component);

 return 0;
}
