
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int attributes; int result_mask; } ;
struct inode {TYPE_1__* i_op; } ;
struct TYPE_2__ {int (* getattr ) (struct path const*,struct kstat*,int ,unsigned int) ;} ;


 scalar_t__ IS_AUTOMOUNT (struct inode*) ;
 scalar_t__ IS_NOATIME (struct inode*) ;
 unsigned int KSTAT_QUERY_FLAGS ;
 int STATX_ALL ;
 int STATX_ATIME ;
 int STATX_ATTR_AUTOMOUNT ;
 int STATX_BASIC_STATS ;
 struct inode* d_backing_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int memset (struct kstat*,int ,int) ;
 int stub1 (struct path const*,struct kstat*,int ,unsigned int) ;

int vfs_getattr_nosec(const struct path *path, struct kstat *stat,
        u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_backing_inode(path->dentry);

 memset(stat, 0, sizeof(*stat));
 stat->result_mask |= STATX_BASIC_STATS;
 request_mask &= STATX_ALL;
 query_flags &= KSTAT_QUERY_FLAGS;


 if (IS_NOATIME(inode))
  stat->result_mask &= ~STATX_ATIME;
 if (IS_AUTOMOUNT(inode))
  stat->attributes |= STATX_ATTR_AUTOMOUNT;

 if (inode->i_op->getattr)
  return inode->i_op->getattr(path, stat, request_mask,
         query_flags);

 generic_fillattr(inode, stat);
 return 0;
}
