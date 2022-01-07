
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 scalar_t__ __should_failslab (struct kmem_cache*,int ) ;

int should_failslab(struct kmem_cache *s, gfp_t gfpflags)
{
 if (__should_failslab(s, gfpflags))
  return -ENOMEM;
 return 0;
}
