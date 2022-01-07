
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 scalar_t__ nsecs_to_jiffies64 (int ) ;

unsigned long nsecs_to_jiffies(u64 n)
{
 return (unsigned long)nsecs_to_jiffies64(n);
}
