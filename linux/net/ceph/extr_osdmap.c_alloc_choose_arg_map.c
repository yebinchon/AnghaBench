
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_choose_arg_map {int node; } ;


 int GFP_NOIO ;
 int RB_CLEAR_NODE (int *) ;
 struct crush_choose_arg_map* kzalloc (int,int ) ;

__attribute__((used)) static struct crush_choose_arg_map *alloc_choose_arg_map(void)
{
 struct crush_choose_arg_map *arg_map;

 arg_map = kzalloc(sizeof(*arg_map), GFP_NOIO);
 if (!arg_map)
  return ((void*)0);

 RB_CLEAR_NODE(&arg_map->node);
 return arg_map;
}
