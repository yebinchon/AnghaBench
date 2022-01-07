
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int length; int value; int name; } ;
struct inode {int dummy; } ;
typedef int XATTR_SECURITY_PREFIX ;


 int EINVAL ;
 int ENODATA ;
 int EOPNOTSUPP ;
 int XATTR_CREATE ;
 int reiserfs_xattr_set_handle (struct reiserfs_transaction_handle*,struct inode*,int ,int ,int ,int ) ;
 int strlen (int ) ;

int reiserfs_security_write(struct reiserfs_transaction_handle *th,
       struct inode *inode,
       struct reiserfs_security_handle *sec)
{
 int error;
 if (strlen(sec->name) < sizeof(XATTR_SECURITY_PREFIX))
  return -EINVAL;

 error = reiserfs_xattr_set_handle(th, inode, sec->name, sec->value,
       sec->length, XATTR_CREATE);
 if (error == -ENODATA || error == -EOPNOTSUPP)
  error = 0;

 return error;
}
