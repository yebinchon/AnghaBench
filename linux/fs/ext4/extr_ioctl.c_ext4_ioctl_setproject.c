
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef scalar_t__ __u32 ;


 int EOPNOTSUPP ;
 scalar_t__ EXT4_DEF_PROJID ;

__attribute__((used)) static int ext4_ioctl_setproject(struct file *filp, __u32 projid)
{
 if (projid != EXT4_DEF_PROJID)
  return -EOPNOTSUPP;
 return 0;
}
