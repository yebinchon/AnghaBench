
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_2__ {struct user_namespace* s_user_ns; } ;


 int AUDIT_TYPE_CHILD_CREATE ;
 int EEXIST ;
 int ENOENT ;
 int EOVERFLOW ;
 scalar_t__ IS_DEADDIR (struct inode*) ;
 int MAY_EXEC ;
 int MAY_WRITE ;
 int audit_inode_child (struct inode*,struct dentry*,int ) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int inode_permission (struct inode*,int) ;
 int kgid_has_mapping (struct user_namespace*,int ) ;
 int kuid_has_mapping (struct user_namespace*,int ) ;

__attribute__((used)) static inline int may_create(struct inode *dir, struct dentry *child)
{
 struct user_namespace *s_user_ns;
 audit_inode_child(dir, child, AUDIT_TYPE_CHILD_CREATE);
 if (child->d_inode)
  return -EEXIST;
 if (IS_DEADDIR(dir))
  return -ENOENT;
 s_user_ns = dir->i_sb->s_user_ns;
 if (!kuid_has_mapping(s_user_ns, current_fsuid()) ||
     !kgid_has_mapping(s_user_ns, current_fsgid()))
  return -EOVERFLOW;
 return inode_permission(dir, MAY_WRITE | MAY_EXEC);
}
