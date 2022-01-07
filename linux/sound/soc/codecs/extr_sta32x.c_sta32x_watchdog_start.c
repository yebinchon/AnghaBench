
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta32x_priv {int watchdog_work; scalar_t__ shutdown; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ needs_esd_watchdog; } ;


 int HZ ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies_relative (int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void sta32x_watchdog_start(struct sta32x_priv *sta32x)
{
 if (sta32x->pdata->needs_esd_watchdog) {
  sta32x->shutdown = 0;
  queue_delayed_work(system_power_efficient_wq,
       &sta32x->watchdog_work,
       round_jiffies_relative(HZ));
 }
}
