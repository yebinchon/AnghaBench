
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ERANGE ;
 int memcpy (void*,int ,int) ;

__attribute__((used)) static int sockfs_xattr_get(const struct xattr_handler *handler,
       struct dentry *dentry, struct inode *inode,
       const char *suffix, void *value, size_t size)
{
 if (value) {
  if (dentry->d_name.len + 1 > size)
   return -ERANGE;
  memcpy(value, dentry->d_name.name, dentry->d_name.len + 1);
 }
 return dentry->d_name.len + 1;
}
