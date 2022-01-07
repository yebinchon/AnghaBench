
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_elem {int rcu; int id; int list; } ;
struct list_set {int net; } ;
struct ip_set {struct list_set* data; } ;


 int __list_set_del_rcu ;
 int call_rcu (int *,int ) ;
 int ip_set_put_byindex (int ,int ) ;
 int list_replace_rcu (int *,int *) ;

__attribute__((used)) static inline void
list_set_replace(struct ip_set *set, struct set_elem *e, struct set_elem *old)
{
 struct list_set *map = set->data;

 list_replace_rcu(&old->list, &e->list);
 ip_set_put_byindex(map->net, old->id);
 call_rcu(&old->rcu, __list_set_del_rcu);
}
