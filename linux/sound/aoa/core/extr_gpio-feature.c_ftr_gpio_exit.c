
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int work; scalar_t__ gpio_private; scalar_t__ notify; } ;
struct gpio_runtime {TYPE_1__ line_out_notify; TYPE_1__ line_in_notify; TYPE_1__ headphone_notify; scalar_t__ implementation_private; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,TYPE_1__*) ;
 int ftr_gpio_all_amps_off (struct gpio_runtime*) ;
 int headphone_detect_irq ;
 int linein_detect_irq ;
 int lineout_detect_irq ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void ftr_gpio_exit(struct gpio_runtime *rt)
{
 ftr_gpio_all_amps_off(rt);
 rt->implementation_private = 0;
 if (rt->headphone_notify.notify)
  free_irq(headphone_detect_irq, &rt->headphone_notify);
 if (rt->line_in_notify.gpio_private)
  free_irq(linein_detect_irq, &rt->line_in_notify);
 if (rt->line_out_notify.gpio_private)
  free_irq(lineout_detect_irq, &rt->line_out_notify);
 cancel_delayed_work_sync(&rt->headphone_notify.work);
 cancel_delayed_work_sync(&rt->line_in_notify.work);
 cancel_delayed_work_sync(&rt->line_out_notify.work);
 mutex_destroy(&rt->headphone_notify.mutex);
 mutex_destroy(&rt->line_in_notify.mutex);
 mutex_destroy(&rt->line_out_notify.mutex);
}
