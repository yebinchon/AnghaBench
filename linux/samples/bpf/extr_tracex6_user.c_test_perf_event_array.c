
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
typedef scalar_t__ pid_t ;


 int _SC_NPROCESSORS_CONF ;
 int assert (int) ;
 int check_on_cpu (int,struct perf_event_attr*) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int printf (char*,char const*) ;
 int sysconf (int ) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void test_perf_event_array(struct perf_event_attr *attr,
      const char *name)
{
 int i, status, nr_cpus = sysconf(_SC_NPROCESSORS_CONF);
 pid_t pid[nr_cpus];
 int err = 0;

 printf("Test reading %s counters\n", name);

 for (i = 0; i < nr_cpus; i++) {
  pid[i] = fork();
  assert(pid[i] >= 0);
  if (pid[i] == 0) {
   check_on_cpu(i, attr);
   exit(1);
  }
 }

 for (i = 0; i < nr_cpus; i++) {
  assert(waitpid(pid[i], &status, 0) == pid[i]);
  err |= status;
 }

 if (err)
  printf("Test: %s FAILED\n", name);
}
