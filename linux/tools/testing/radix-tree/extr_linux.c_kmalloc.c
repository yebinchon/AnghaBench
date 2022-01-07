
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_DIRECT_RECLAIM ;
 int __GFP_ZERO ;
 scalar_t__ kmalloc_verbose ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;
 int nr_allocated ;
 int printf (char*,void*) ;
 int uatomic_inc (int *) ;

void *kmalloc(size_t size, gfp_t gfp)
{
 void *ret;

 if (!(gfp & __GFP_DIRECT_RECLAIM))
  return ((void*)0);

 ret = malloc(size);
 uatomic_inc(&nr_allocated);
 if (kmalloc_verbose)
  printf("Allocating %p from malloc\n", ret);
 if (gfp & __GFP_ZERO)
  memset(ret, 0, size);
 return ret;
}
