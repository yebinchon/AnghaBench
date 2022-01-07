
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;
typedef size_t __u32 ;


 size_t IP_VS_SVC_TAB_MASK ;

__attribute__((used)) static inline unsigned int ip_vs_svc_fwm_hashkey(struct netns_ipvs *ipvs, __u32 fwmark)
{
 return (((size_t)ipvs>>8) ^ fwmark) & IP_VS_SVC_TAB_MASK;
}
