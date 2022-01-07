
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_elem {int rcu; int id; int list; } ;
struct list_set {int net; } ;
struct ip_set {int elements; struct list_set* data; } ;


 int __list_set_del_rcu ;
 int call_rcu (int *,int ) ;
 int ip_set_put_byindex (int ,int ) ;
 int list_del_rcu (int *) ;

__attribute__((used)) static inline void
list_set_del(struct ip_set *set, struct set_elem *e)
{
 struct list_set *map = set->data;

 set->elements--;
 list_del_rcu(&e->list);
 ip_set_put_byindex(map->net, e->id);
 call_rcu(&e->rcu, __list_set_del_rcu);
}
