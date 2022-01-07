
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

int ife_validate_meta_u32(void *val, int len)
{
 if (len == sizeof(u32))
  return 0;

 return -EINVAL;
}
