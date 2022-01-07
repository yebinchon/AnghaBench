
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct task_struct {struct nsproxy* nsproxy; int fs; } ;
struct nsproxy {int dummy; } ;


 int CAP_SYS_ADMIN ;
 unsigned long CLONE_NEWCGROUP ;
 unsigned long CLONE_NEWIPC ;
 unsigned long CLONE_NEWNET ;
 unsigned long CLONE_NEWNS ;
 unsigned long CLONE_NEWPID ;
 unsigned long CLONE_NEWUTS ;
 unsigned long CLONE_SYSVSEM ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct nsproxy*) ;
 int PTR_ERR (struct nsproxy*) ;
 struct nsproxy* create_new_namespaces (unsigned long,struct task_struct*,struct user_namespace*,int ) ;
 int get_nsproxy (struct nsproxy*) ;
 scalar_t__ likely (int) ;
 int ns_capable (struct user_namespace*,int ) ;
 struct user_namespace* task_cred_xxx (struct task_struct*,int ) ;
 struct user_namespace* user_ns ;

int copy_namespaces(unsigned long flags, struct task_struct *tsk)
{
 struct nsproxy *old_ns = tsk->nsproxy;
 struct user_namespace *user_ns = task_cred_xxx(tsk, user_ns);
 struct nsproxy *new_ns;

 if (likely(!(flags & (CLONE_NEWNS | CLONE_NEWUTS | CLONE_NEWIPC |
         CLONE_NEWPID | CLONE_NEWNET |
         CLONE_NEWCGROUP)))) {
  get_nsproxy(old_ns);
  return 0;
 }

 if (!ns_capable(user_ns, CAP_SYS_ADMIN))
  return -EPERM;
 if ((flags & (CLONE_NEWIPC | CLONE_SYSVSEM)) ==
  (CLONE_NEWIPC | CLONE_SYSVSEM))
  return -EINVAL;

 new_ns = create_new_namespaces(flags, tsk, user_ns, tsk->fs);
 if (IS_ERR(new_ns))
  return PTR_ERR(new_ns);

 tsk->nsproxy = new_ns;
 return 0;
}
