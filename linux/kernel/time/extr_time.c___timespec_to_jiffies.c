
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 unsigned long __timespec64_to_jiffies (int ,long) ;

__attribute__((used)) static unsigned long
__timespec_to_jiffies(unsigned long sec, long nsec)
{
 return __timespec64_to_jiffies((u64)sec, nsec);
}
