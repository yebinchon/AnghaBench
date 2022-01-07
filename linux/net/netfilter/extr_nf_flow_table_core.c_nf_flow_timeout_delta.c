
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int __s32 ;


 scalar_t__ jiffies ;

__attribute__((used)) static inline __s32 nf_flow_timeout_delta(unsigned int timeout)
{
 return (__s32)(timeout - (u32)jiffies);
}
