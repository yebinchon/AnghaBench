
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
typedef int handle_t ;


 int ext4_initxattrs ;
 int security_inode_init_security (struct inode*,struct inode*,struct qstr const*,int *,int *) ;

int
ext4_init_security(handle_t *handle, struct inode *inode, struct inode *dir,
     const struct qstr *qstr)
{
 return security_inode_init_security(inode, dir, qstr,
         &ext4_initxattrs, handle);
}
