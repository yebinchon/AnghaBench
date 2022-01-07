
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex_waiter {int dummy; } ;



__attribute__((used)) static inline struct rt_mutex_waiter *
task_top_pi_waiter(struct task_struct *p)
{
 return ((void*)0);
}
