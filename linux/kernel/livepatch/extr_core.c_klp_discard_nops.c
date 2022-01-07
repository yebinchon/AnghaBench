
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_patch {int dummy; } ;


 int klp_free_objects_dynamic (int ) ;
 int klp_transition_patch ;
 int klp_unpatch_objects_dynamic (int ) ;

void klp_discard_nops(struct klp_patch *new_patch)
{
 klp_unpatch_objects_dynamic(klp_transition_patch);
 klp_free_objects_dynamic(klp_transition_patch);
}
