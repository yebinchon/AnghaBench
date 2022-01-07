
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int target; } ;
struct trace {TYPE_1__ opts; int tool; int * host; } ;
struct TYPE_4__ {int threads; } ;
struct evlist {TYPE_2__ core; } ;


 int ENOMEM ;
 int __machine__synthesize_threads (int *,int *,int *,int ,int ,int,int) ;
 int * machine__new_host () ;
 int symbol__exit () ;
 int symbol__init (int *) ;
 int trace__machine__resolve_kernel_addr ;
 int trace__tool_process ;
 int trace_event__register_resolver (int *,int ) ;

__attribute__((used)) static int trace__symbols_init(struct trace *trace, struct evlist *evlist)
{
 int err = symbol__init(((void*)0));

 if (err)
  return err;

 trace->host = machine__new_host();
 if (trace->host == ((void*)0))
  return -ENOMEM;

 err = trace_event__register_resolver(trace->host, trace__machine__resolve_kernel_addr);
 if (err < 0)
  goto out;

 err = __machine__synthesize_threads(trace->host, &trace->tool, &trace->opts.target,
         evlist->core.threads, trace__tool_process, 0,
         1);
out:
 if (err)
  symbol__exit();

 return err;
}
