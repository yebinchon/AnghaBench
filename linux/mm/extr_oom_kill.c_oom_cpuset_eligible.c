
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct oom_control {int dummy; } ;



__attribute__((used)) static bool oom_cpuset_eligible(struct task_struct *tsk, struct oom_control *oc)
{
 return 1;
}
