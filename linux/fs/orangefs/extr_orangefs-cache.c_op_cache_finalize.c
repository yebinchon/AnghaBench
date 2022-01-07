
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int op_cache ;

int op_cache_finalize(void)
{
 kmem_cache_destroy(op_cache);
 return 0;
}
