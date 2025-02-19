
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_runtime {int implementation_private; } ;


 int pmf_gpio_set_amp (struct gpio_runtime*,int ) ;
 int pmf_gpio_set_headphone (struct gpio_runtime*,int ) ;
 int pmf_gpio_set_lineout (struct gpio_runtime*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void pmf_gpio_all_amps_off(struct gpio_runtime *rt)
{
 int saved;

 if (unlikely(!rt)) return;
 saved = rt->implementation_private;
 pmf_gpio_set_headphone(rt, 0);
 pmf_gpio_set_amp(rt, 0);
 pmf_gpio_set_lineout(rt, 0);
 rt->implementation_private = saved;
}
