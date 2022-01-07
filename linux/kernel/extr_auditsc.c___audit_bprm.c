
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_binprm {int argc; } ;
struct TYPE_2__ {int argc; } ;
struct audit_context {TYPE_1__ execve; int type; } ;


 int AUDIT_EXECVE ;
 struct audit_context* audit_context () ;

void __audit_bprm(struct linux_binprm *bprm)
{
 struct audit_context *context = audit_context();

 context->type = AUDIT_EXECVE;
 context->execve.argc = bprm->argc;
}
