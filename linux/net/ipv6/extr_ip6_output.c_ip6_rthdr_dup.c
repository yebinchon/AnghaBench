
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_rt_hdr {int hdrlen; } ;
typedef int gfp_t ;


 struct ipv6_rt_hdr* kmemdup (struct ipv6_rt_hdr*,int,int ) ;

__attribute__((used)) static inline struct ipv6_rt_hdr *ip6_rthdr_dup(struct ipv6_rt_hdr *src,
      gfp_t gfp)
{
 return src ? kmemdup(src, (src->hdrlen + 1) * 8, gfp) : ((void*)0);
}
