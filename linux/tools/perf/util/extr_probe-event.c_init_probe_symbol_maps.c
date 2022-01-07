
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sort_by_name; int allow_aliases; scalar_t__ vmlinux_name; } ;


 scalar_t__ host_machine ;
 scalar_t__ machine__new_host () ;
 int pr_debug (char*,...) ;
 int pr_warning (char*) ;
 int symbol__exit () ;
 int symbol__init (int *) ;
 TYPE_1__ symbol_conf ;

int init_probe_symbol_maps(bool user_only)
{
 int ret;

 symbol_conf.sort_by_name = 1;
 symbol_conf.allow_aliases = 1;
 ret = symbol__init(((void*)0));
 if (ret < 0) {
  pr_debug("Failed to init symbol map.\n");
  goto out;
 }

 if (host_machine || user_only)
  return 0;

 if (symbol_conf.vmlinux_name)
  pr_debug("Use vmlinux: %s\n", symbol_conf.vmlinux_name);

 host_machine = machine__new_host();
 if (!host_machine) {
  pr_debug("machine__new_host() failed.\n");
  symbol__exit();
  ret = -1;
 }
out:
 if (ret < 0)
  pr_warning("Failed to init vmlinux path.\n");
 return ret;
}
