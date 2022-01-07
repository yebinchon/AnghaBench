
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 int BUILD_BUG_ON (int) ;
 unsigned int* ioctl_pointer ;

__attribute__((used)) static int compat_ioctl_check_table(unsigned int xcmd)
{
 int i;
 const int max = ARRAY_SIZE(ioctl_pointer) - 1;

 BUILD_BUG_ON(max >= (1 << 16));



 i = ((xcmd >> 16) * max) >> 16;


 while (ioctl_pointer[i] < xcmd && i < max)
  i++;


 while (ioctl_pointer[i] > xcmd && i > 0)
  i--;

 return ioctl_pointer[i] == xcmd;
}
