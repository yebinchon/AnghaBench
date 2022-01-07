
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int dummy; } ;


 int __debug_object_init (void*,struct debug_obj_descr*,int) ;
 int debug_objects_enabled ;

void debug_object_init_on_stack(void *addr, struct debug_obj_descr *descr)
{
 if (!debug_objects_enabled)
  return;

 __debug_object_init(addr, descr, 1);
}
