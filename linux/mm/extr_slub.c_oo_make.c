
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_order_objects {int member_0; } ;


 unsigned int OO_SHIFT ;
 int order_objects (unsigned int,unsigned int) ;

__attribute__((used)) static inline struct kmem_cache_order_objects oo_make(unsigned int order,
  unsigned int size)
{
 struct kmem_cache_order_objects x = {
  (order << OO_SHIFT) + order_objects(order, size)
 };

 return x;
}
