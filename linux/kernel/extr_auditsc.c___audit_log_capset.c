
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cred {int cap_ambient; int cap_permitted; int cap_effective; } ;
struct TYPE_3__ {int ambient; int permitted; int inheritable; int effective; } ;
struct TYPE_4__ {TYPE_1__ cap; int pid; } ;
struct audit_context {int type; TYPE_2__ capset; } ;


 int AUDIT_CAPSET ;
 struct audit_context* audit_context () ;
 int current ;
 int task_tgid_nr (int ) ;

void __audit_log_capset(const struct cred *new, const struct cred *old)
{
 struct audit_context *context = audit_context();
 context->capset.pid = task_tgid_nr(current);
 context->capset.cap.effective = new->cap_effective;
 context->capset.cap.inheritable = new->cap_effective;
 context->capset.cap.permitted = new->cap_permitted;
 context->capset.cap.ambient = new->cap_ambient;
 context->type = AUDIT_CAPSET;
}
