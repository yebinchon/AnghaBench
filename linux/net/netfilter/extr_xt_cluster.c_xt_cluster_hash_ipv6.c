
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct xt_cluster_match_info {int hash_seed; } ;
typedef int __u32 ;


 int NF_CT_TUPLE_L3SIZE ;
 int jhash2 (void const*,int,int ) ;

__attribute__((used)) static inline u_int32_t
xt_cluster_hash_ipv6(const void *ip, const struct xt_cluster_match_info *info)
{
 return jhash2(ip, NF_CT_TUPLE_L3SIZE / sizeof(__u32), info->hash_seed);
}
