
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 int MODULE_STATE_COMING ;
 int blocking_notifier_call_chain (int *,int ,struct module*) ;
 int ftrace_module_enable (struct module*) ;
 int klp_module_coming (struct module*) ;
 int module_notify_list ;

__attribute__((used)) static int prepare_coming_module(struct module *mod)
{
 int err;

 ftrace_module_enable(mod);
 err = klp_module_coming(mod);
 if (err)
  return err;

 blocking_notifier_call_chain(&module_notify_list,
         MODULE_STATE_COMING, mod);
 return 0;
}
