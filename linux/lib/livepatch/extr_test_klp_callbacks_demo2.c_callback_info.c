
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct klp_object {TYPE_1__* mod; } ;
struct TYPE_2__ {size_t state; int name; } ;


 int * module_state ;
 int pr_info (char*,char const*,...) ;

__attribute__((used)) static void callback_info(const char *callback, struct klp_object *obj)
{
 if (obj->mod)
  pr_info("%s: %s -> %s\n", callback, obj->mod->name,
   module_state[obj->mod->state]);
 else
  pr_info("%s: vmlinux\n", callback);
}
