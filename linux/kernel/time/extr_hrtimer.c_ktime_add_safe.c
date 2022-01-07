
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ktime_t ;


 int KTIME_SEC_MAX ;
 scalar_t__ ktime_add_unsafe (scalar_t__ const,scalar_t__ const) ;
 scalar_t__ ktime_set (int ,int ) ;

ktime_t ktime_add_safe(const ktime_t lhs, const ktime_t rhs)
{
 ktime_t res = ktime_add_unsafe(lhs, rhs);





 if (res < 0 || res < lhs || res < rhs)
  res = ktime_set(KTIME_SEC_MAX, 0);

 return res;
}
