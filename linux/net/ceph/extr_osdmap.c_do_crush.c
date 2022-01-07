
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crush_choose_arg_map {int * args; } ;
struct ceph_osdmap {int crush_workspace_mutex; int crush_workspace; TYPE_1__* crush; } ;
typedef int s64 ;
typedef int __u32 ;
struct TYPE_2__ {int choose_args; } ;


 int BUG_ON (int) ;
 int CEPH_DEFAULT_CHOOSE_ARGS ;
 int CEPH_PG_MAX_SIZE ;
 int crush_do_rule (TYPE_1__*,int,int,int*,int,int const*,int,int ,int *) ;
 struct crush_choose_arg_map* lookup_choose_arg_map (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int do_crush(struct ceph_osdmap *map, int ruleno, int x,
      int *result, int result_max,
      const __u32 *weight, int weight_max,
      s64 choose_args_index)
{
 struct crush_choose_arg_map *arg_map;
 int r;

 BUG_ON(result_max > CEPH_PG_MAX_SIZE);

 arg_map = lookup_choose_arg_map(&map->crush->choose_args,
     choose_args_index);
 if (!arg_map)
  arg_map = lookup_choose_arg_map(&map->crush->choose_args,
      CEPH_DEFAULT_CHOOSE_ARGS);

 mutex_lock(&map->crush_workspace_mutex);
 r = crush_do_rule(map->crush, ruleno, x, result, result_max,
     weight, weight_max, map->crush_workspace,
     arg_map ? arg_map->args : ((void*)0));
 mutex_unlock(&map->crush_workspace_mutex);

 return r;
}
