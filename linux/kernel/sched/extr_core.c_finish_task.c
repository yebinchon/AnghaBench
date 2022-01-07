
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int on_cpu; } ;


 int smp_store_release (int *,int ) ;

__attribute__((used)) static inline void finish_task(struct task_struct *prev)
{
}
