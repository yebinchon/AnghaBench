
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct audit_context {int type; TYPE_1__ module; } ;


 int AUDIT_KERN_MODULE ;
 int GFP_KERNEL ;
 struct audit_context* audit_context () ;
 int audit_log_lost (char*) ;
 int kstrdup (char*,int ) ;

void __audit_log_kern_module(char *name)
{
 struct audit_context *context = audit_context();

 context->module.name = kstrdup(name, GFP_KERNEL);
 if (!context->module.name)
  audit_log_lost("out of memory in __audit_log_kern_module");
 context->type = AUDIT_KERN_MODULE;
}
