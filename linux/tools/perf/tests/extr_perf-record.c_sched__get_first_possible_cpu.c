
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int cpu_set_t ;


 int CPU_CLR (int,int *) ;
 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ EINVAL ;
 scalar_t__ errno ;
 int perror (char*) ;
 int sched_getaffinity (int ,int,int *) ;

__attribute__((used)) static int sched__get_first_possible_cpu(pid_t pid, cpu_set_t *maskp)
{
 int i, cpu = -1, nrcpus = 1024;
realloc:
 CPU_ZERO(maskp);

 if (sched_getaffinity(pid, sizeof(*maskp), maskp) == -1) {
  if (errno == EINVAL && nrcpus < (1024 << 8)) {
   nrcpus = nrcpus << 2;
   goto realloc;
  }
  perror("sched_getaffinity");
   return -1;
 }

 for (i = 0; i < nrcpus; i++) {
  if (CPU_ISSET(i, maskp)) {
   if (cpu == -1)
    cpu = i;
   else
    CPU_CLR(i, maskp);
  }
 }

 return cpu;
}
