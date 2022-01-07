
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuid_core_info {scalar_t__ pkg; scalar_t__ core; scalar_t__ cpu; } ;



__attribute__((used)) static int __compare(const void *t1, const void *t2)
{
 struct cpuid_core_info *top1 = (struct cpuid_core_info *)t1;
 struct cpuid_core_info *top2 = (struct cpuid_core_info *)t2;
 if (top1->pkg < top2->pkg)
  return -1;
 else if (top1->pkg > top2->pkg)
  return 1;
 else if (top1->core < top2->core)
  return -1;
 else if (top1->core > top2->core)
  return 1;
 else if (top1->cpu < top2->cpu)
  return -1;
 else if (top1->cpu > top2->cpu)
  return 1;
 else
  return 0;
}
