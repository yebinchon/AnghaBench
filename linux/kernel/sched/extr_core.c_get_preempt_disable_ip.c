
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned long preempt_disable_ip; } ;



__attribute__((used)) static inline unsigned long get_preempt_disable_ip(struct task_struct *p)
{



 return 0;

}
