
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int clockid_t ;


 struct task_struct* __get_task_for_clock (int const,int,int) ;

__attribute__((used)) static inline struct task_struct *get_task_for_clock_get(const clockid_t clock)
{
 return __get_task_for_clock(clock, 1, 1);
}
