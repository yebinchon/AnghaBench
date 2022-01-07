
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int upcall_portids; } ;


 int kfree (struct vport*) ;
 struct vport* rcu_dereference_raw (int ) ;

void ovs_vport_free(struct vport *vport)
{



 kfree(rcu_dereference_raw(vport->upcall_portids));
 kfree(vport);
}
