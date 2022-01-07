
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 int FILE__READ ;
 struct cred* current_cred () ;
 int dentry_has_perm (struct cred const*,struct dentry*,int ) ;

__attribute__((used)) static int selinux_inode_readlink(struct dentry *dentry)
{
 const struct cred *cred = current_cred();

 return dentry_has_perm(cred, dentry, FILE__READ);
}
