
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 unsigned int MAX_ORDER ;
 int fls (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int nr_cpu_ids ;
 unsigned int order_objects (unsigned int,unsigned int) ;
 unsigned int slab_order (unsigned int,int,unsigned int,int) ;
 unsigned int slub_max_order ;
 unsigned int slub_min_objects ;

__attribute__((used)) static inline int calculate_order(unsigned int size)
{
 unsigned int order;
 unsigned int min_objects;
 unsigned int max_objects;
 min_objects = slub_min_objects;
 if (!min_objects)
  min_objects = 4 * (fls(nr_cpu_ids) + 1);
 max_objects = order_objects(slub_max_order, size);
 min_objects = min(min_objects, max_objects);

 while (min_objects > 1) {
  unsigned int fraction;

  fraction = 16;
  while (fraction >= 4) {
   order = slab_order(size, min_objects,
     slub_max_order, fraction);
   if (order <= slub_max_order)
    return order;
   fraction /= 2;
  }
  min_objects--;
 }





 order = slab_order(size, 1, slub_max_order, 1);
 if (order <= slub_max_order)
  return order;




 order = slab_order(size, 1, MAX_ORDER, 1);
 if (order < MAX_ORDER)
  return order;
 return -ENOSYS;
}
