
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct can_proto {int protocol; int prot; } ;


 int BUG_ON (int) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * proto_tab ;
 int proto_tab_lock ;
 int proto_unregister (int ) ;
 struct can_proto const* rcu_access_pointer (int ) ;
 int synchronize_rcu () ;

void can_proto_unregister(const struct can_proto *cp)
{
 int proto = cp->protocol;

 mutex_lock(&proto_tab_lock);
 BUG_ON(rcu_access_pointer(proto_tab[proto]) != cp);
 RCU_INIT_POINTER(proto_tab[proto], ((void*)0));
 mutex_unlock(&proto_tab_lock);

 synchronize_rcu();

 proto_unregister(cp->prot);
}
