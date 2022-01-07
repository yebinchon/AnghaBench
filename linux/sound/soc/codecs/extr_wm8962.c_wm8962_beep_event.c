
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int beep_rate; int beep_work; } ;
struct snd_soc_component {int dev; } ;
struct input_dev {int dummy; } ;




 int dev_dbg (int ,char*,unsigned int,int) ;
 struct snd_soc_component* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8962_beep_event(struct input_dev *dev, unsigned int type,
        unsigned int code, int hz)
{
 struct snd_soc_component *component = input_get_drvdata(dev);
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);

 dev_dbg(component->dev, "Beep event %x %x\n", code, hz);

 switch (code) {
 case 129:
  if (hz)
   hz = 1000;
 case 128:
  break;
 default:
  return -1;
 }


 wm8962->beep_rate = hz;
 schedule_work(&wm8962->beep_work);
 return 0;
}
