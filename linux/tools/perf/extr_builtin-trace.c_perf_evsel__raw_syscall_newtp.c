
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;


 scalar_t__ IS_ERR (struct evsel*) ;
 int evsel__delete_priv (struct evsel*) ;
 scalar_t__ perf_evsel__init_raw_syscall_tp (struct evsel*,void*) ;
 struct evsel* perf_evsel__newtp (char*,char const*) ;

__attribute__((used)) static struct evsel *perf_evsel__raw_syscall_newtp(const char *direction, void *handler)
{
 struct evsel *evsel = perf_evsel__newtp("raw_syscalls", direction);


 if (IS_ERR(evsel))
  evsel = perf_evsel__newtp("syscalls", direction);

 if (IS_ERR(evsel))
  return ((void*)0);

 if (perf_evsel__init_raw_syscall_tp(evsel, handler))
  goto out_delete;

 return evsel;

out_delete:
 evsel__delete_priv(evsel);
 return ((void*)0);
}
