
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int name; } ;


 int ENOEXEC ;
 int LOCKDEP_NOW_UNRELIABLE ;
 int TAINT_FORCED_MODULE ;
 int add_taint_module (struct module*,int ,int ) ;
 int pr_warn (char*,int ,char const*) ;
 int test_taint (int ) ;

__attribute__((used)) static int try_to_force_load(struct module *mod, const char *reason)
{






 return -ENOEXEC;

}
