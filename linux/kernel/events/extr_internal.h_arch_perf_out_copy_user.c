
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __copy_from_user_inatomic (void*,void const*,unsigned long) ;
 int pagefault_disable () ;
 int pagefault_enable () ;

__attribute__((used)) static inline unsigned long
arch_perf_out_copy_user(void *dst, const void *src, unsigned long n)
{
 unsigned long ret;

 pagefault_disable();
 ret = __copy_from_user_inatomic(dst, src, n);
 pagefault_enable();

 return ret;
}
