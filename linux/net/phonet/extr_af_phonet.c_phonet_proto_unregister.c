
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phonet_protocol {int prot; } ;


 int BUG_ON (int) ;
 int RCU_INIT_POINTER (struct phonet_protocol const*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct phonet_protocol const** proto_tab ;
 int proto_tab_lock ;
 int proto_unregister (int ) ;
 int synchronize_rcu () ;

void phonet_proto_unregister(unsigned int protocol,
   const struct phonet_protocol *pp)
{
 mutex_lock(&proto_tab_lock);
 BUG_ON(proto_tab[protocol] != pp);
 RCU_INIT_POINTER(proto_tab[protocol], ((void*)0));
 mutex_unlock(&proto_tab_lock);
 synchronize_rcu();
 proto_unregister(pp->prot);
}
