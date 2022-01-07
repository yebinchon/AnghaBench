
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AC_WCAP_TYPE ;
 unsigned int AC_WCAP_TYPE_SHIFT ;

__attribute__((used)) static inline int get_wcaps_type(unsigned int wcaps)
{
 if (!wcaps)
  return -1;
 return (wcaps & AC_WCAP_TYPE) >> AC_WCAP_TYPE_SHIFT;
}
