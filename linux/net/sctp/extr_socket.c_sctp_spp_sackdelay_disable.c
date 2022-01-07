
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int SPP_SACKDELAY ;
 int SPP_SACKDELAY_DISABLE ;

__attribute__((used)) static inline __u32 sctp_spp_sackdelay_disable(__u32 param_flags)
{
 return (param_flags & ~SPP_SACKDELAY) | SPP_SACKDELAY_DISABLE;
}
