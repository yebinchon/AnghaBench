
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct evsel* sys_exit; struct evsel* sys_enter; } ;
struct TYPE_10__ {TYPE_3__ events; } ;
struct trace {TYPE_4__ syscalls; int kernel_syscallchains; int opts; struct evlist* evlist; } ;
struct TYPE_7__ {int exclude_callchain_kernel; } ;
struct TYPE_8__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;
struct TYPE_11__ {scalar_t__ enabled; } ;


 int args ;
 TYPE_5__ callchain_param ;
 int evlist__add (struct evlist*,struct evsel*) ;
 int evsel__delete_priv (struct evsel*) ;
 int perf_evsel__config_callchain (struct evsel*,int *,TYPE_5__*) ;
 scalar_t__ perf_evsel__init_sc_tp_ptr_field (struct evsel*,int ) ;
 scalar_t__ perf_evsel__init_sc_tp_uint_field (struct evsel*,int) ;
 struct evsel* perf_evsel__raw_syscall_newtp (char*,int ) ;
 int trace__sys_enter ;
 int trace__sys_exit ;

__attribute__((used)) static int trace__add_syscall_newtp(struct trace *trace)
{
 int ret = -1;
 struct evlist *evlist = trace->evlist;
 struct evsel *sys_enter, *sys_exit;

 sys_enter = perf_evsel__raw_syscall_newtp("sys_enter", trace__sys_enter);
 if (sys_enter == ((void*)0))
  goto out;

 if (perf_evsel__init_sc_tp_ptr_field(sys_enter, args))
  goto out_delete_sys_enter;

 sys_exit = perf_evsel__raw_syscall_newtp("sys_exit", trace__sys_exit);
 if (sys_exit == ((void*)0))
  goto out_delete_sys_enter;

 if (perf_evsel__init_sc_tp_uint_field(sys_exit, ret))
  goto out_delete_sys_exit;

 perf_evsel__config_callchain(sys_enter, &trace->opts, &callchain_param);
 perf_evsel__config_callchain(sys_exit, &trace->opts, &callchain_param);

 evlist__add(evlist, sys_enter);
 evlist__add(evlist, sys_exit);

 if (callchain_param.enabled && !trace->kernel_syscallchains) {





  sys_exit->core.attr.exclude_callchain_kernel = 1;
 }

 trace->syscalls.events.sys_enter = sys_enter;
 trace->syscalls.events.sys_exit = sys_exit;

 ret = 0;
out:
 return ret;

out_delete_sys_exit:
 evsel__delete_priv(sys_exit);
out_delete_sys_enter:
 evsel__delete_priv(sys_enter);
 goto out;
}
