
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_security_struct {int sid; int osid; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {scalar_t__ real_cred; } ;


 int SECINITSID_KERNEL ;
 TYPE_1__* current ;
 struct task_security_struct* selinux_cred (struct cred*) ;

__attribute__((used)) static void cred_init_security(void)
{
 struct cred *cred = (struct cred *) current->real_cred;
 struct task_security_struct *tsec;

 tsec = selinux_cred(cred);
 tsec->osid = tsec->sid = SECINITSID_KERNEL;
}
