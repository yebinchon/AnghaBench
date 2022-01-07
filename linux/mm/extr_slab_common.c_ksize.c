
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON_ONCE (int) ;
 void const* ZERO_SIZE_PTR ;
 int __kasan_check_read (void const*,int) ;
 size_t __ksize (void const*) ;
 int kasan_unpoison_shadow (void const*,size_t) ;
 scalar_t__ unlikely (int) ;

size_t ksize(const void *objp)
{
 size_t size;

 if (WARN_ON_ONCE(!objp))
  return 0;
 if (unlikely(objp == ZERO_SIZE_PTR) || !__kasan_check_read(objp, 1))
  return 0;

 size = __ksize(objp);




 kasan_unpoison_shadow(objp, size);
 return size;
}
