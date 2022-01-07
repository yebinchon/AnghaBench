
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ERANGE ;
 int XATTR_NAME_SOCKPROTONAME ;
 scalar_t__ XATTR_NAME_SOCKPROTONAME_LEN ;
 int d_inode (struct dentry*) ;
 int memcpy (char*,int ,scalar_t__) ;
 scalar_t__ security_inode_listsecurity (int ,char*,size_t) ;

__attribute__((used)) static ssize_t sockfs_listxattr(struct dentry *dentry, char *buffer,
    size_t size)
{
 ssize_t len;
 ssize_t used = 0;

 len = security_inode_listsecurity(d_inode(dentry), buffer, size);
 if (len < 0)
  return len;
 used += len;
 if (buffer) {
  if (size < used)
   return -ERANGE;
  buffer += len;
 }

 len = (XATTR_NAME_SOCKPROTONAME_LEN + 1);
 used += len;
 if (buffer) {
  if (size < used)
   return -ERANGE;
  memcpy(buffer, XATTR_NAME_SOCKPROTONAME, len);
  buffer += len;
 }

 return used;
}
