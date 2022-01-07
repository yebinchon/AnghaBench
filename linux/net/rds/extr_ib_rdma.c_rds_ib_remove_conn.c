
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int spinlock; } ;
struct rds_ib_connection {int * rds_ibdev; int ib_node; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;


 int BUG_ON (int ) ;
 int ib_nodev_conns ;
 int ib_nodev_conns_lock ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int rds_ib_dev_put (struct rds_ib_device*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

void rds_ib_remove_conn(struct rds_ib_device *rds_ibdev, struct rds_connection *conn)
{
 struct rds_ib_connection *ic = conn->c_transport_data;


 spin_lock(&ib_nodev_conns_lock);

 spin_lock_irq(&rds_ibdev->spinlock);
 BUG_ON(list_empty(&ic->ib_node));
 list_del(&ic->ib_node);
 spin_unlock_irq(&rds_ibdev->spinlock);

 list_add_tail(&ic->ib_node, &ib_nodev_conns);

 spin_unlock(&ib_nodev_conns_lock);

 ic->rds_ibdev = ((void*)0);
 rds_ib_dev_put(rds_ibdev);
}
