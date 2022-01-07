
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm0010_priv {int state; int boot_failed; int dev; int irq_lock; } ;
typedef enum wm0010_state { ____Placeholder_wm0010_state } wm0010_state ;


 int dev_err (int ,char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wm0010_state_to_str (int) ;

__attribute__((used)) static void wm0010_mark_boot_failure(struct wm0010_priv *wm0010)
{
 enum wm0010_state state;
 unsigned long flags;

 spin_lock_irqsave(&wm0010->irq_lock, flags);
 state = wm0010->state;
 spin_unlock_irqrestore(&wm0010->irq_lock, flags);

 dev_err(wm0010->dev, "Failed to transition from `%s' state to `%s' state\n",
  wm0010_state_to_str(state), wm0010_state_to_str(state + 1));

 wm0010->boot_failed = 1;
}
