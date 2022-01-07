
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct inode {int dummy; } ;
typedef unsigned long __u64 ;


 int ENODATA ;
 int orangefs_inode_getxattr (struct inode*,char*,unsigned long*,int) ;

__attribute__((used)) static int orangefs_getflags(struct inode *inode, unsigned long *uval)
{
 __u64 val = 0;
 int ret;

 ret = orangefs_inode_getxattr(inode,
          "user.pvfs2.meta_hint",
          &val, sizeof(val));
 if (ret < 0 && ret != -ENODATA)
  return ret;
 else if (ret == -ENODATA)
  val = 0;
 *uval = val;
 return 0;
}
