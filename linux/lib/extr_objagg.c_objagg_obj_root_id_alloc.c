
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objagg_obj {int root_id; } ;
struct objagg_hints_node {unsigned int root_id; } ;
struct objagg {int root_ida; TYPE_1__* hints; } ;
struct TYPE_2__ {unsigned int root_count; } ;


 int GFP_KERNEL ;
 int OBJAGG_OBJ_ROOT_ID_INVALID ;
 int ida_alloc_range (int *,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int objagg_obj_root_id_alloc(struct objagg *objagg,
        struct objagg_obj *objagg_obj,
        struct objagg_hints_node *hnode)
{
 unsigned int min, max;
 int root_id;


 if (!objagg->hints) {
  objagg_obj->root_id = OBJAGG_OBJ_ROOT_ID_INVALID;
  return 0;
 }

 if (hnode) {
  min = hnode->root_id;
  max = hnode->root_id;
 } else {



  min = objagg->hints->root_count;
  max = ~0;
 }

 root_id = ida_alloc_range(&objagg->root_ida, min, max, GFP_KERNEL);

 if (root_id < 0)
  return root_id;
 objagg_obj->root_id = root_id;
 return 0;
}
