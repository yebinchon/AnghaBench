
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size_class {unsigned long objs_per_zspage; unsigned long pages_per_zspage; } ;


 int OBJ_ALLOCATED ;
 int OBJ_USED ;
 unsigned long zs_stat_get (struct size_class*,int ) ;

__attribute__((used)) static unsigned long zs_can_compact(struct size_class *class)
{
 unsigned long obj_wasted;
 unsigned long obj_allocated = zs_stat_get(class, OBJ_ALLOCATED);
 unsigned long obj_used = zs_stat_get(class, OBJ_USED);

 if (obj_allocated <= obj_used)
  return 0;

 obj_wasted = obj_allocated - obj_used;
 obj_wasted /= class->objs_per_zspage;

 return obj_wasted * class->pages_per_zspage;
}
