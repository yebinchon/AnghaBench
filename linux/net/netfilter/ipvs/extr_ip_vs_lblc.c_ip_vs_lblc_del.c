
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_lblc_entry {int rcu_head; int list; } ;


 int call_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 int ip_vs_lblc_rcu_free ;

__attribute__((used)) static inline void ip_vs_lblc_del(struct ip_vs_lblc_entry *en)
{
 hlist_del_rcu(&en->list);
 call_rcu(&en->rcu_head, ip_vs_lblc_rcu_free);
}
