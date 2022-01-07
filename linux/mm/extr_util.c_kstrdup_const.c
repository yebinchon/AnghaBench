
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 scalar_t__ is_kernel_rodata (unsigned long) ;
 char const* kstrdup (char const*,int ) ;

const char *kstrdup_const(const char *s, gfp_t gfp)
{
 if (is_kernel_rodata((unsigned long)s))
  return s;

 return kstrdup(s, gfp);
}
