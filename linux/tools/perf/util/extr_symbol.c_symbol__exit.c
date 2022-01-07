
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; int * bt_stop_list; int * comm_list; int * dso_list; int * sym_list; int pid_list; int tid_list; } ;


 int intlist__delete (int ) ;
 int strlist__delete (int *) ;
 TYPE_1__ symbol_conf ;
 int vmlinux_path__exit () ;

void symbol__exit(void)
{
 if (!symbol_conf.initialized)
  return;
 strlist__delete(symbol_conf.bt_stop_list);
 strlist__delete(symbol_conf.sym_list);
 strlist__delete(symbol_conf.dso_list);
 strlist__delete(symbol_conf.comm_list);
 intlist__delete(symbol_conf.tid_list);
 intlist__delete(symbol_conf.pid_list);
 vmlinux_path__exit();
 symbol_conf.sym_list = symbol_conf.dso_list = symbol_conf.comm_list = ((void*)0);
 symbol_conf.bt_stop_list = ((void*)0);
 symbol_conf.initialized = 0;
}
