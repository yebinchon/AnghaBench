
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int in_compat_syscall () ;

__attribute__((used)) static inline int is_32bit_api(void)
{



 return (BITS_PER_LONG == 32);

}
