
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nargs; int args; } ;
struct audit_context {TYPE_1__ socketcall; int type; } ;


 int AUDITSC_ARGS ;
 int AUDIT_SOCKETCALL ;
 int EINVAL ;
 struct audit_context* audit_context () ;
 int memcpy (int ,unsigned long*,int) ;

int __audit_socketcall(int nargs, unsigned long *args)
{
 struct audit_context *context = audit_context();

 if (nargs <= 0 || nargs > AUDITSC_ARGS || !args)
  return -EINVAL;
 context->type = AUDIT_SOCKETCALL;
 context->socketcall.nargs = nargs;
 memcpy(context->socketcall.args, args, nargs * sizeof(unsigned long));
 return 0;
}
