
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_set_net {size_t ip_set_max; int ip_set_list; } ;
struct ip_set {int name; } ;
typedef size_t ip_set_id_t ;


 size_t IPSET_INVALID_ID ;
 scalar_t__ STRNCMP (int ,char const*) ;
 int __ip_set_get (struct ip_set*) ;
 struct ip_set_net* ip_set_pernet (struct net*) ;
 struct ip_set** rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

ip_set_id_t
ip_set_get_byname(struct net *net, const char *name, struct ip_set **set)
{
 ip_set_id_t i, index = IPSET_INVALID_ID;
 struct ip_set *s;
 struct ip_set_net *inst = ip_set_pernet(net);

 rcu_read_lock();
 for (i = 0; i < inst->ip_set_max; i++) {
  s = rcu_dereference(inst->ip_set_list)[i];
  if (s && STRNCMP(s->name, name)) {
   __ip_set_get(s);
   index = i;
   *set = s;
   break;
  }
 }
 rcu_read_unlock();

 return index;
}
