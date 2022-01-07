
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_choose_arg_map {int size; int weight_set_size; struct crush_choose_arg_map* args; struct crush_choose_arg_map* ids; struct crush_choose_arg_map* weight_set; struct crush_choose_arg_map* weights; int node; } ;
struct crush_choose_arg {int size; int weight_set_size; struct crush_choose_arg* args; struct crush_choose_arg* ids; struct crush_choose_arg* weight_set; struct crush_choose_arg* weights; int node; } ;


 int RB_EMPTY_NODE (int *) ;
 int WARN_ON (int) ;
 int kfree (struct crush_choose_arg_map*) ;

__attribute__((used)) static void free_choose_arg_map(struct crush_choose_arg_map *arg_map)
{
 if (arg_map) {
  int i, j;

  WARN_ON(!RB_EMPTY_NODE(&arg_map->node));

  for (i = 0; i < arg_map->size; i++) {
   struct crush_choose_arg *arg = &arg_map->args[i];

   for (j = 0; j < arg->weight_set_size; j++)
    kfree(arg->weight_set[j].weights);
   kfree(arg->weight_set);
   kfree(arg->ids);
  }
  kfree(arg_map->args);
  kfree(arg_map);
 }
}
