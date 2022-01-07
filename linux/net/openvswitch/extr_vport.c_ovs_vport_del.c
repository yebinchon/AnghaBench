
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* ops; int hash_node; } ;
struct TYPE_2__ {int (* destroy ) (struct vport*) ;int owner; } ;


 int hlist_del_rcu (int *) ;
 int module_put (int ) ;
 int stub1 (struct vport*) ;

void ovs_vport_del(struct vport *vport)
{
 hlist_del_rcu(&vport->hash_node);
 module_put(vport->ops->owner);
 vport->ops->destroy(vport);
}
