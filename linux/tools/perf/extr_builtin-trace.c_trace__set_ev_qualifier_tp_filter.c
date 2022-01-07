
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct evsel* sys_exit; struct evsel* sys_enter; } ;
struct TYPE_5__ {TYPE_3__ events; } ;
struct TYPE_4__ {int entries; int nr; } ;
struct trace {TYPE_2__ syscalls; TYPE_1__ ev_qualifier_ids; int not_ev_qualifier; } ;
struct evsel {int dummy; } ;


 int ENOMEM ;
 char* asprintf_expr_inout_ints (char*,int,int ,int ) ;
 int errno ;
 int free (char*) ;
 int perf_evsel__append_tp_filter (struct evsel*,char*) ;

__attribute__((used)) static int trace__set_ev_qualifier_tp_filter(struct trace *trace)
{
 int err = -1;
 struct evsel *sys_exit;
 char *filter = asprintf_expr_inout_ints("id", !trace->not_ev_qualifier,
      trace->ev_qualifier_ids.nr,
      trace->ev_qualifier_ids.entries);

 if (filter == ((void*)0))
  goto out_enomem;

 if (!perf_evsel__append_tp_filter(trace->syscalls.events.sys_enter,
       filter)) {
  sys_exit = trace->syscalls.events.sys_exit;
  err = perf_evsel__append_tp_filter(sys_exit, filter);
 }

 free(filter);
out:
 return err;
out_enomem:
 errno = ENOMEM;
 goto out;
}
