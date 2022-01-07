
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline int shadow_pid(int realpid)
{
 if (realpid)
  return realpid;

 return -raw_smp_processor_id() - 2;
}
