
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int uses_mmap; scalar_t__ per_thread; scalar_t__ default_per_cpu; } ;


 int target__has_cpu (struct target*) ;
 scalar_t__ target__has_per_thread (struct target*) ;
 scalar_t__ target__has_task (struct target*) ;

__attribute__((used)) static inline bool target__uses_dummy_map(struct target *target)
{
 bool use_dummy = 0;

 if (target->default_per_cpu)
  use_dummy = target->per_thread ? 1 : 0;
 else if (target__has_task(target) ||
          (!target__has_cpu(target) && !target->uses_mmap))
  use_dummy = 1;
 else if (target__has_per_thread(target))
  use_dummy = 1;

 return use_dummy;
}
