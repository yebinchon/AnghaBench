
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int O_APPEND ;
 int O_DIRECT ;

int nfs_check_flags(int flags)
{
 if ((flags & (O_APPEND | O_DIRECT)) == (O_APPEND | O_DIRECT))
  return -EINVAL;

 return 0;
}
