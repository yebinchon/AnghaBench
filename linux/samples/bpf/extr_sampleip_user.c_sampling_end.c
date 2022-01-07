
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int nr_cpus ;

__attribute__((used)) static void sampling_end(int *pmu_fd)
{
 int i;

 for (i = 0; i < nr_cpus; i++)
  close(pmu_fd[i]);
}
