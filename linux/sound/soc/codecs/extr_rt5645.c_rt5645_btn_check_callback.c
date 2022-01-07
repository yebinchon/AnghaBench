
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rt5645_priv {int jack_detect_work; } ;


 int btn_check_timer ;
 struct rt5645_priv* from_timer (int ,struct timer_list*,int ) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct rt5645_priv* rt5645 ;
 int system_power_efficient_wq ;

__attribute__((used)) static void rt5645_btn_check_callback(struct timer_list *t)
{
 struct rt5645_priv *rt5645 = from_timer(rt5645, t, btn_check_timer);

 queue_delayed_work(system_power_efficient_wq,
     &rt5645->jack_detect_work, msecs_to_jiffies(5));
}
