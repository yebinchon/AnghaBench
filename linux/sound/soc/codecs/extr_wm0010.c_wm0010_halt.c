
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm0010_priv {int state; int irq_lock; int core_supplies; int dbvdd; int gpio_reset_value; int gpio_reset; } ;
struct snd_soc_component {int dummy; } ;
typedef enum wm0010_state { ____Placeholder_wm0010_state } wm0010_state ;


 int ARRAY_SIZE (int ) ;





 int gpio_set_value_cansleep (int ,int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_disable (int ) ;
 struct wm0010_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void wm0010_halt(struct snd_soc_component *component)
{
 struct wm0010_priv *wm0010 = snd_soc_component_get_drvdata(component);
 unsigned long flags;
 enum wm0010_state state;


 spin_lock_irqsave(&wm0010->irq_lock, flags);
 state = wm0010->state;
 spin_unlock_irqrestore(&wm0010->irq_lock, flags);

 switch (state) {
 case 129:

  return;
 case 130:
 case 132:
 case 128:
 case 131:

  gpio_set_value_cansleep(wm0010->gpio_reset,
     wm0010->gpio_reset_value);

  regulator_disable(wm0010->dbvdd);
  regulator_bulk_disable(ARRAY_SIZE(wm0010->core_supplies),
           wm0010->core_supplies);
  break;
 }

 spin_lock_irqsave(&wm0010->irq_lock, flags);
 wm0010->state = 129;
 spin_unlock_irqrestore(&wm0010->irq_lock, flags);
}
