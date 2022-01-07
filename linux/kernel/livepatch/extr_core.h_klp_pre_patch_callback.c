
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pre_patch ) (struct klp_object*) ;int post_unpatch_enabled; } ;
struct klp_object {TYPE_1__ callbacks; } ;


 int stub1 (struct klp_object*) ;

__attribute__((used)) static inline int klp_pre_patch_callback(struct klp_object *obj)
{
 int ret = 0;

 if (obj->callbacks.pre_patch)
  ret = (*obj->callbacks.pre_patch)(obj);

 obj->callbacks.post_unpatch_enabled = !ret;

 return ret;
}
