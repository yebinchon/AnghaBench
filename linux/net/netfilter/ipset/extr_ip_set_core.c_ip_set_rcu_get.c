
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_set_net {int ip_set_list; } ;
struct ip_set {int dummy; } ;
typedef size_t ip_set_id_t ;


 struct ip_set_net* ip_set_pernet (struct net*) ;
 struct ip_set** rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct ip_set *
ip_set_rcu_get(struct net *net, ip_set_id_t index)
{
 struct ip_set *set;
 struct ip_set_net *inst = ip_set_pernet(net);

 rcu_read_lock();

 set = rcu_dereference(inst->ip_set_list)[index];
 rcu_read_unlock();

 return set;
}
