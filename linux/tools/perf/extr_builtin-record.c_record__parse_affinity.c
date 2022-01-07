
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {int affinity; } ;
struct option {scalar_t__ value; } ;


 int PERF_AFFINITY_CPU ;
 int PERF_AFFINITY_NODE ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int record__parse_affinity(const struct option *opt, const char *str, int unset)
{
 struct record_opts *opts = (struct record_opts *)opt->value;

 if (unset || !str)
  return 0;

 if (!strcasecmp(str, "node"))
  opts->affinity = PERF_AFFINITY_NODE;
 else if (!strcasecmp(str, "cpu"))
  opts->affinity = PERF_AFFINITY_CPU;

 return 0;
}
