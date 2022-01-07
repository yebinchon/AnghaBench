
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef enum schedutil_type { ____Placeholder_schedutil_type } schedutil_type ;



__attribute__((used)) static inline unsigned long schedutil_cpu_util(int cpu, unsigned long util_cfs,
     unsigned long max, enum schedutil_type type,
     struct task_struct *p)
{
 return 0;
}
