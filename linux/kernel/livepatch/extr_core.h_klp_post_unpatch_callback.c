
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int post_unpatch_enabled; int (* post_unpatch ) (struct klp_object*) ;} ;
struct klp_object {TYPE_1__ callbacks; } ;


 int stub1 (struct klp_object*) ;

__attribute__((used)) static inline void klp_post_unpatch_callback(struct klp_object *obj)
{
 if (obj->callbacks.post_unpatch_enabled &&
     obj->callbacks.post_unpatch)
  (*obj->callbacks.post_unpatch)(obj);

 obj->callbacks.post_unpatch_enabled = 0;
}
