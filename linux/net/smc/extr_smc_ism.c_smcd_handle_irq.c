
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smcd_dev {int lock; struct smc_connection** conn; } ;
struct smc_connection {int rx_tsklet; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

void smcd_handle_irq(struct smcd_dev *smcd, unsigned int dmbno)
{
 struct smc_connection *conn = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&smcd->lock, flags);
 conn = smcd->conn[dmbno];
 if (conn)
  tasklet_schedule(&conn->rx_tsklet);
 spin_unlock_irqrestore(&smcd->lock, flags);
}
