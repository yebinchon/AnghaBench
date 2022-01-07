
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int _SC_NPROCESSORS_CONF ;
 int access (char*,int ) ;
 int free (char*) ;
 int hweight64 (unsigned long long) ;
 int snprintf (char*,int,char*,int) ;
 unsigned long long strtoull (char*,int *,int) ;
 int sysconf (int ) ;
 scalar_t__ sysfs__read_str (char*,char**,size_t*) ;

int smt_on(void)
{
 static bool cached;
 static int cached_result;
 int cpu;
 int ncpu;

 if (cached)
  return cached_result;

 ncpu = sysconf(_SC_NPROCESSORS_CONF);
 for (cpu = 0; cpu < ncpu; cpu++) {
  unsigned long long siblings;
  char *str;
  size_t strlen;
  char fn[256];

  snprintf(fn, sizeof fn,
   "devices/system/cpu/cpu%d/topology/core_cpus", cpu);
  if (access(fn, F_OK) == -1) {
   snprintf(fn, sizeof fn,
    "devices/system/cpu/cpu%d/topology/thread_siblings",
    cpu);
  }
  if (sysfs__read_str(fn, &str, &strlen) < 0)
   continue;

  siblings = strtoull(str, ((void*)0), 16);
  free(str);
  if (hweight64(siblings) > 1) {
   cached_result = 1;
   cached = 1;
   break;
  }
 }
 if (!cached) {
  cached_result = 0;
  cached = 1;
 }
 return cached_result;
}
