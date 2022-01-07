
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_security_struct {int dummy; } ;
typedef struct cred const cred ;


 void* selinux_cred (struct cred const*) ;

__attribute__((used)) static void selinux_cred_transfer(struct cred *new, const struct cred *old)
{
 const struct task_security_struct *old_tsec = selinux_cred(old);
 struct task_security_struct *tsec = selinux_cred(new);

 *tsec = *old_tsec;
}
