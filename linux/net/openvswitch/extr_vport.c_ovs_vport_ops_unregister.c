
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport_ops {int list; } ;


 int list_del (int *) ;
 int ovs_lock () ;
 int ovs_unlock () ;

void ovs_vport_ops_unregister(struct vport_ops *ops)
{
 ovs_lock();
 list_del(&ops->list);
 ovs_unlock();
}
