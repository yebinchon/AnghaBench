
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm_adsp {int pwr_lock; TYPE_1__* ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* stop_watchdog ) (struct wm_adsp*) ;} ;


 int IRQ_HANDLED ;
 int adsp_warn (struct wm_adsp*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wm_adsp*) ;
 int wm_adsp_fatal_error (struct wm_adsp*) ;

irqreturn_t wm_halo_wdt_expire(int irq, void *data)
{
 struct wm_adsp *dsp = data;

 mutex_lock(&dsp->pwr_lock);

 adsp_warn(dsp, "WDT Expiry Fault\n");
 dsp->ops->stop_watchdog(dsp);
 wm_adsp_fatal_error(dsp);

 mutex_unlock(&dsp->pwr_lock);

 return IRQ_HANDLED;
}
