
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct task_struct {int ptracer_cred; } ;
struct cred {int dummy; } ;


 int CAP_OPT_NOAUDIT ;
 int CAP_SYS_PTRACE ;
 struct cred* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_capable (struct cred const*,struct user_namespace*,int ,int ) ;

bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns)
{
 int ret = 0;
 const struct cred *cred;

 rcu_read_lock();
 cred = rcu_dereference(tsk->ptracer_cred);
 if (cred)
  ret = security_capable(cred, ns, CAP_SYS_PTRACE,
           CAP_OPT_NOAUDIT);
 rcu_read_unlock();
 return (ret == 0);
}
