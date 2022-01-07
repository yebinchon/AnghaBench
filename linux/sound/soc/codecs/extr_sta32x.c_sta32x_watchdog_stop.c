
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta32x_priv {int shutdown; int watchdog_work; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ needs_esd_watchdog; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void sta32x_watchdog_stop(struct sta32x_priv *sta32x)
{
 if (sta32x->pdata->needs_esd_watchdog) {
  sta32x->shutdown = 1;
  cancel_delayed_work_sync(&sta32x->watchdog_work);
 }
}
