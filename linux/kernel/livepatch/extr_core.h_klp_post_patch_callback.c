
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* post_patch ) (struct klp_object*) ;} ;
struct klp_object {TYPE_1__ callbacks; } ;


 int stub1 (struct klp_object*) ;

__attribute__((used)) static inline void klp_post_patch_callback(struct klp_object *obj)
{
 if (obj->callbacks.post_patch)
  (*obj->callbacks.post_patch)(obj);
}
