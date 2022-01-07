
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* ZERO_SIZE_PTR ;
 void* __do_krealloc (void const*,size_t,int ) ;
 scalar_t__ unlikely (int) ;

void *__krealloc(const void *p, size_t new_size, gfp_t flags)
{
 if (unlikely(!new_size))
  return ZERO_SIZE_PTR;

 return __do_krealloc(p, new_size, flags);

}
