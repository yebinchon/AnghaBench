
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pre_unpatch ) (struct klp_object*) ;} ;
struct klp_object {TYPE_1__ callbacks; } ;


 int stub1 (struct klp_object*) ;

__attribute__((used)) static inline void klp_pre_unpatch_callback(struct klp_object *obj)
{
 if (obj->callbacks.pre_unpatch)
  (*obj->callbacks.pre_unpatch)(obj);
}
