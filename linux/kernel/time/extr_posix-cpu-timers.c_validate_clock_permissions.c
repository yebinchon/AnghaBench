
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clockid_t ;


 int EINVAL ;
 scalar_t__ __get_task_for_clock (int const,int,int) ;

__attribute__((used)) static inline int validate_clock_permissions(const clockid_t clock)
{
 return __get_task_for_clock(clock, 0, 0) ? 0 : -EINVAL;
}
