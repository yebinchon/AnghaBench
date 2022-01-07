
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
typedef int ssize_t ;
typedef scalar_t__ __u8 ;
typedef int __le32 ;


 int PAGE_SIZE ;
 scalar_t__ le32_to_cpu (int ) ;
 int snprintf (char*,int ,char*,scalar_t__) ;

__attribute__((used)) static ssize_t __print_tstamp(char *buf, __le32 lo, __u8 hi)
{
 return snprintf(buf, PAGE_SIZE, "%lld",
   ((time64_t)hi << 32) + le32_to_cpu(lo));
}
