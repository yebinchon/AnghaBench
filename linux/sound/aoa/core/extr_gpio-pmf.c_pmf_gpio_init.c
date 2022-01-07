
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int work; } ;
struct TYPE_6__ {int mutex; int work; } ;
struct TYPE_5__ {int mutex; int work; } ;
struct gpio_runtime {TYPE_1__ line_out_notify; TYPE_3__ line_in_notify; TYPE_2__ headphone_notify; scalar_t__ implementation_private; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int mutex_init (int *) ;
 int pmf_gpio_all_amps_off (struct gpio_runtime*) ;
 int pmf_handle_notify ;

__attribute__((used)) static void pmf_gpio_init(struct gpio_runtime *rt)
{
 pmf_gpio_all_amps_off(rt);
 rt->implementation_private = 0;
 INIT_DELAYED_WORK(&rt->headphone_notify.work, pmf_handle_notify);
 INIT_DELAYED_WORK(&rt->line_in_notify.work, pmf_handle_notify);
 INIT_DELAYED_WORK(&rt->line_out_notify.work, pmf_handle_notify);
 mutex_init(&rt->headphone_notify.mutex);
 mutex_init(&rt->line_in_notify.mutex);
 mutex_init(&rt->line_out_notify.mutex);
}
