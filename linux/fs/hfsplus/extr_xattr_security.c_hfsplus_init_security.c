
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;


 int hfsplus_initxattrs ;
 int security_inode_init_security (struct inode*,struct inode*,struct qstr const*,int *,int *) ;

int hfsplus_init_security(struct inode *inode, struct inode *dir,
    const struct qstr *qstr)
{
 return security_inode_init_security(inode, dir, qstr,
     &hfsplus_initxattrs, ((void*)0));
}
