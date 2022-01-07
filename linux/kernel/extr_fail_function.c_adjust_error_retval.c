
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;



 scalar_t__ MAX_ERRNO ;
 int get_injectable_error_type (unsigned long) ;

__attribute__((used)) static unsigned long adjust_error_retval(unsigned long addr, unsigned long retv)
{
 switch (get_injectable_error_type(addr)) {
 case 128:
  if (retv != 0)
   return 0;
  break;
 case 130:
  if (retv < (unsigned long)-MAX_ERRNO)
   return (unsigned long)-EINVAL;
  break;
 case 129:
  if (retv != 0 && retv < (unsigned long)-MAX_ERRNO)
   return (unsigned long)-EINVAL;
  break;
 }

 return retv;
}
