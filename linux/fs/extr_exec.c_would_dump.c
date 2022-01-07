
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {struct user_namespace* parent; } ;
struct linux_binprm {TYPE_1__* mm; int interp_flags; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct user_namespace* user_ns; } ;


 int BINPRM_FLAGS_ENFORCE_NONDUMP ;
 int MAY_READ ;
 struct inode* file_inode (struct file*) ;
 struct user_namespace* get_user_ns (struct user_namespace*) ;
 struct user_namespace init_user_ns ;
 scalar_t__ inode_permission (struct inode*,int ) ;
 int privileged_wrt_inode_uidgid (struct user_namespace*,struct inode*) ;
 int put_user_ns (struct user_namespace*) ;

void would_dump(struct linux_binprm *bprm, struct file *file)
{
 struct inode *inode = file_inode(file);
 if (inode_permission(inode, MAY_READ) < 0) {
  struct user_namespace *old, *user_ns;
  bprm->interp_flags |= BINPRM_FLAGS_ENFORCE_NONDUMP;


  user_ns = old = bprm->mm->user_ns;
  while ((user_ns != &init_user_ns) &&
         !privileged_wrt_inode_uidgid(user_ns, inode))
   user_ns = user_ns->parent;

  if (old != user_ns) {
   bprm->mm->user_ns = get_user_ns(user_ns);
   put_user_ns(old);
  }
 }
}
