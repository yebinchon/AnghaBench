
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _CMP_WRAPPER ;
 void sort_r (void*,size_t,size_t,int ,void (*) (void*,void*,int),int (*) (void const*,void const*)) ;

void sort(void *base, size_t num, size_t size,
   int (*cmp_func)(const void *, const void *),
   void (*swap_func)(void *, void *, int size))
{
 return sort_r(base, num, size, _CMP_WRAPPER, swap_func, cmp_func);
}
