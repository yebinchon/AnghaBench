
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set_net {int ip_set_list; } ;
struct ip_set {int dummy; } ;
typedef size_t ip_set_id_t ;


 int __ip_set_put (struct ip_set*) ;
 struct ip_set** rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline void
__ip_set_put_byindex(struct ip_set_net *inst, ip_set_id_t index)
{
 struct ip_set *set;

 rcu_read_lock();
 set = rcu_dereference(inst->ip_set_list)[index];
 if (set)
  __ip_set_put(set);
 rcu_read_unlock();
}
