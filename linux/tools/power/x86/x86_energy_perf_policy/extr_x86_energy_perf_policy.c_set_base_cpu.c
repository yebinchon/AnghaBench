
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ base_cpu ;
 int err (int ,char*) ;
 scalar_t__ sched_getcpu () ;

void set_base_cpu(void)
{
 base_cpu = sched_getcpu();
 if (base_cpu < 0)
  err(-ENODEV, "No valid cpus found");
}
