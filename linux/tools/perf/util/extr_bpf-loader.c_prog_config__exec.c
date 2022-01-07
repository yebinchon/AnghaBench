
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_event {int uprobes; int target; } ;


 int ENOMEM ;
 int strdup (char const*) ;

__attribute__((used)) static int
prog_config__exec(const char *value, struct perf_probe_event *pev)
{
 pev->uprobes = 1;
 pev->target = strdup(value);
 if (!pev->target)
  return -ENOMEM;
 return 0;
}
