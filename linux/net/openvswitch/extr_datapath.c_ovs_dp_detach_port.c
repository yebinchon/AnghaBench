
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dp_hash_node; } ;


 int ASSERT_OVSL () ;
 int hlist_del_rcu (int *) ;
 int ovs_vport_del (struct vport*) ;

void ovs_dp_detach_port(struct vport *p)
{
 ASSERT_OVSL();


 hlist_del_rcu(&p->dp_hash_node);


 ovs_vport_del(p);
}
