
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opt_nflen; struct ipv6_opt_hdr* dst1opt; } ;
struct ipv6_tel_txoption {int* dst_opt; TYPE_1__ ops; } ;
struct ipv6_opt_hdr {int dummy; } ;
typedef int __u8 ;


 int IPV6_TLV_PADN ;
 int IPV6_TLV_TNL_ENCAP_LIMIT ;
 int memset (struct ipv6_tel_txoption*,int ,int) ;

__attribute__((used)) static void init_tel_txopt(struct ipv6_tel_txoption *opt, __u8 encap_limit)
{
 memset(opt, 0, sizeof(struct ipv6_tel_txoption));

 opt->dst_opt[2] = IPV6_TLV_TNL_ENCAP_LIMIT;
 opt->dst_opt[3] = 1;
 opt->dst_opt[4] = encap_limit;
 opt->dst_opt[5] = IPV6_TLV_PADN;
 opt->dst_opt[6] = 1;

 opt->ops.dst1opt = (struct ipv6_opt_hdr *) opt->dst_opt;
 opt->ops.opt_nflen = 8;
}
