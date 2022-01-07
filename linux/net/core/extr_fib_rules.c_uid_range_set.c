
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_kuid_range {int end; int start; } ;


 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static int uid_range_set(struct fib_kuid_range *range)
{
 return uid_valid(range->start) && uid_valid(range->end);
}
