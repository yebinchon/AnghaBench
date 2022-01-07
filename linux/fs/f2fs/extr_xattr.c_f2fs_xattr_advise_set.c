
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {unsigned char i_advise; } ;


 int EINVAL ;
 int EPERM ;
 TYPE_1__* F2FS_I (struct inode*) ;
 unsigned char FADVISE_MODIFIABLE_BITS ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int inode_owner_or_capable (struct inode*) ;

__attribute__((used)) static int f2fs_xattr_advise_set(const struct xattr_handler *handler,
  struct dentry *unused, struct inode *inode,
  const char *name, const void *value,
  size_t size, int flags)
{
 unsigned char old_advise = F2FS_I(inode)->i_advise;
 unsigned char new_advise;

 if (!inode_owner_or_capable(inode))
  return -EPERM;
 if (value == ((void*)0))
  return -EINVAL;

 new_advise = *(char *)value;
 if (new_advise & ~FADVISE_MODIFIABLE_BITS)
  return -EINVAL;

 new_advise = new_advise & FADVISE_MODIFIABLE_BITS;
 new_advise |= old_advise & ~FADVISE_MODIFIABLE_BITS;

 F2FS_I(inode)->i_advise = new_advise;
 f2fs_mark_inode_dirty_sync(inode, 1);
 return 0;
}
