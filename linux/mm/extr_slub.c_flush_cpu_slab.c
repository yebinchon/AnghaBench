
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int __flush_cpu_slab (struct kmem_cache*,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void flush_cpu_slab(void *d)
{
 struct kmem_cache *s = d;

 __flush_cpu_slab(s, smp_processor_id());
}
