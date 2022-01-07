
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_order_objects {unsigned int x; } ;


 unsigned int OO_MASK ;

__attribute__((used)) static inline unsigned int oo_objects(struct kmem_cache_order_objects x)
{
 return x.x & OO_MASK;
}
