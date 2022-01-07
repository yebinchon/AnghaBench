
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;



__attribute__((used)) static inline int rt_effective_prio(struct task_struct *p, int prio)
{
 return prio;
}
