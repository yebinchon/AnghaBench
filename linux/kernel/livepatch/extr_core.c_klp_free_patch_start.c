
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_patch {int list; } ;


 int klp_free_objects (struct klp_patch*) ;
 int list_del (int *) ;
 int list_empty (int *) ;

void klp_free_patch_start(struct klp_patch *patch)
{
 if (!list_empty(&patch->list))
  list_del(&patch->list);

 klp_free_objects(patch);
}
