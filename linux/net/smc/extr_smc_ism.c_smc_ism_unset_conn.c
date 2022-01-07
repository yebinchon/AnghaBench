
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smc_connection {TYPE_2__* lgr; TYPE_3__* rmb_desc; } ;
struct TYPE_6__ {size_t sba_idx; } ;
struct TYPE_5__ {TYPE_1__* smcd; } ;
struct TYPE_4__ {int lock; int ** conn; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void smc_ism_unset_conn(struct smc_connection *conn)
{
 unsigned long flags;

 if (!conn->rmb_desc)
  return;

 spin_lock_irqsave(&conn->lgr->smcd->lock, flags);
 conn->lgr->smcd->conn[conn->rmb_desc->sba_idx] = ((void*)0);
 spin_unlock_irqrestore(&conn->lgr->smcd->lock, flags);
}
