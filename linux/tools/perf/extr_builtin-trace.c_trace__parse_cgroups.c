
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace {TYPE_2__* evlist; int cgroup; } ;
struct option {struct trace* value; } ;
struct TYPE_3__ {int entries; } ;
struct TYPE_4__ {TYPE_1__ core; } ;


 int evlist__findnew_cgroup (TYPE_2__*,char const*) ;
 int list_empty (int *) ;
 int parse_cgroups (struct option const*,char const*,int) ;

__attribute__((used)) static int trace__parse_cgroups(const struct option *opt, const char *str, int unset)
{
 struct trace *trace = opt->value;

 if (!list_empty(&trace->evlist->core.entries))
  return parse_cgroups(opt, str, unset);

 trace->cgroup = evlist__findnew_cgroup(trace->evlist, str);

 return 0;
}
