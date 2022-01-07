
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {char i_advise; } ;


 TYPE_1__* F2FS_I (struct inode*) ;

__attribute__((used)) static int f2fs_xattr_advise_get(const struct xattr_handler *handler,
  struct dentry *unused, struct inode *inode,
  const char *name, void *buffer, size_t size)
{
 if (buffer)
  *((char *)buffer) = F2FS_I(inode)->i_advise;
 return sizeof(char);
}
