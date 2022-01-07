
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_9pfs_dataring {int work; int wq; TYPE_1__* priv; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int client; } ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t xen_9pfs_front_event_handler(int irq, void *r)
{
 struct xen_9pfs_dataring *ring = r;

 if (!ring || !ring->priv->client) {

  return IRQ_HANDLED;
 }

 wake_up_interruptible(&ring->wq);
 schedule_work(&ring->work);

 return IRQ_HANDLED;
}
