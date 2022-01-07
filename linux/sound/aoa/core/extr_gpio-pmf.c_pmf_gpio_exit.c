
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ gpio_private; int mutex; int work; } ;
struct TYPE_5__ {scalar_t__ gpio_private; int mutex; int work; } ;
struct TYPE_4__ {scalar_t__ gpio_private; int mutex; int work; } ;
struct gpio_runtime {TYPE_3__ line_out_notify; TYPE_2__ line_in_notify; TYPE_1__ headphone_notify; scalar_t__ implementation_private; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (scalar_t__) ;
 int mutex_destroy (int *) ;
 int pmf_gpio_all_amps_off (struct gpio_runtime*) ;
 int pmf_unregister_irq_client (scalar_t__) ;

__attribute__((used)) static void pmf_gpio_exit(struct gpio_runtime *rt)
{
 pmf_gpio_all_amps_off(rt);
 rt->implementation_private = 0;

 if (rt->headphone_notify.gpio_private)
  pmf_unregister_irq_client(rt->headphone_notify.gpio_private);
 if (rt->line_in_notify.gpio_private)
  pmf_unregister_irq_client(rt->line_in_notify.gpio_private);
 if (rt->line_out_notify.gpio_private)
  pmf_unregister_irq_client(rt->line_out_notify.gpio_private);



 cancel_delayed_work_sync(&rt->headphone_notify.work);
 cancel_delayed_work_sync(&rt->line_in_notify.work);
 cancel_delayed_work_sync(&rt->line_out_notify.work);

 mutex_destroy(&rt->headphone_notify.mutex);
 mutex_destroy(&rt->line_in_notify.mutex);
 mutex_destroy(&rt->line_out_notify.mutex);

 kfree(rt->headphone_notify.gpio_private);
 kfree(rt->line_in_notify.gpio_private);
 kfree(rt->line_out_notify.gpio_private);
}
