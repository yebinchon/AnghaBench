
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int sid; } ;
struct cred {int dummy; } ;


 struct task_security_struct* selinux_cred (struct cred const*) ;

__attribute__((used)) static inline u32 cred_sid(const struct cred *cred)
{
 const struct task_security_struct *tsec;

 tsec = selinux_cred(cred);
 return tsec->sid;
}
