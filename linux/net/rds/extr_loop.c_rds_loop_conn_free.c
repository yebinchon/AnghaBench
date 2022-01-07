
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_loop_connection {int loop_node; } ;


 int kfree (struct rds_loop_connection*) ;
 int list_del (int *) ;
 int loop_conns_lock ;
 int rdsdebug (char*,struct rds_loop_connection*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rds_loop_conn_free(void *arg)
{
 struct rds_loop_connection *lc = arg;
 unsigned long flags;

 rdsdebug("lc %p\n", lc);
 spin_lock_irqsave(&loop_conns_lock, flags);
 list_del(&lc->loop_node);
 spin_unlock_irqrestore(&loop_conns_lock, flags);
 kfree(lc);
}
