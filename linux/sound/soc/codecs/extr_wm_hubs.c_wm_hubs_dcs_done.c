
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {int dcs_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

irqreturn_t wm_hubs_dcs_done(int irq, void *data)
{
 struct wm_hubs_data *hubs = data;

 complete(&hubs->dcs_done);

 return IRQ_HANDLED;
}
