
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int BUG_ON (int) ;
 int JBD2_MAX_SLABS ;
 struct kmem_cache** jbd2_slab ;
 int order_base_2 (size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct kmem_cache *get_slab(size_t size)
{
 int i = order_base_2(size) - 10;

 BUG_ON(i >= JBD2_MAX_SLABS);
 if (unlikely(i < 0))
  i = 0;
 BUG_ON(jbd2_slab[i] == ((void*)0));
 return jbd2_slab[i];
}
