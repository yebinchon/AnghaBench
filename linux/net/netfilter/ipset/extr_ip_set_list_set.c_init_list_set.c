
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int dummy; } ;
struct list_set {int members; struct ip_set* set; struct net* net; int size; } ;
struct ip_set {struct list_set* data; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct list_set* kzalloc (int,int ) ;

__attribute__((used)) static bool
init_list_set(struct net *net, struct ip_set *set, u32 size)
{
 struct list_set *map;

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (!map)
  return 0;

 map->size = size;
 map->net = net;
 map->set = set;
 INIT_LIST_HEAD(&map->members);
 set->data = map;

 return 1;
}
