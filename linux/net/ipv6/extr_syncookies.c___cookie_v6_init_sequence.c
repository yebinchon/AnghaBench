
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcphdr {int seq; int dest; int source; } ;
struct ipv6hdr {int daddr; int saddr; } ;
typedef scalar_t__ __u16 ;


 int ARRAY_SIZE (scalar_t__ const*) ;
 scalar_t__ const* msstab ;
 int ntohl (int ) ;
 int secure_tcp_syn_cookie (int *,int *,int ,int ,int ,int) ;

u32 __cookie_v6_init_sequence(const struct ipv6hdr *iph,
         const struct tcphdr *th, __u16 *mssp)
{
 int mssind;
 const __u16 mss = *mssp;

 for (mssind = ARRAY_SIZE(msstab) - 1; mssind ; mssind--)
  if (mss >= msstab[mssind])
   break;

 *mssp = msstab[mssind];

 return secure_tcp_syn_cookie(&iph->saddr, &iph->daddr, th->source,
         th->dest, ntohl(th->seq), mssind);
}
