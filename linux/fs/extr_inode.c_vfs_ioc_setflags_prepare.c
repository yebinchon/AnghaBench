
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CAP_LINUX_IMMUTABLE ;
 int EPERM ;
 unsigned int FS_APPEND_FL ;
 unsigned int FS_IMMUTABLE_FL ;
 int capable (int ) ;

int vfs_ioc_setflags_prepare(struct inode *inode, unsigned int oldflags,
        unsigned int flags)
{






 if ((flags ^ oldflags) & (FS_APPEND_FL | FS_IMMUTABLE_FL) &&
     !capable(CAP_LINUX_IMMUTABLE))
  return -EPERM;

 return 0;
}
