
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrmu_spdinfo {int dummy; } ;
struct xfrmu_spdhthresh {int dummy; } ;
struct xfrmu_spdhinfo {int dummy; } ;


 unsigned int NLMSG_ALIGN (int) ;
 unsigned int nla_total_size (int) ;

__attribute__((used)) static inline unsigned int xfrm_spdinfo_msgsize(void)
{
 return NLMSG_ALIGN(4)
        + nla_total_size(sizeof(struct xfrmu_spdinfo))
        + nla_total_size(sizeof(struct xfrmu_spdhinfo))
        + nla_total_size(sizeof(struct xfrmu_spdhthresh))
        + nla_total_size(sizeof(struct xfrmu_spdhthresh));
}
