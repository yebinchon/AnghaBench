
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int policy; } ;


 int idle_policy (int ) ;

__attribute__((used)) static inline int task_has_idle_policy(struct task_struct *p)
{
 return idle_policy(p->policy);
}
