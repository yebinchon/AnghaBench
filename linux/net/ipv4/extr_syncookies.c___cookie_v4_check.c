
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcphdr {int dest; int source; int seq; } ;
struct iphdr {int daddr; int saddr; } ;
typedef size_t __u32 ;


 size_t ARRAY_SIZE (int*) ;
 size_t check_tcp_syn_cookie (int ,int ,int ,int ,int ,size_t) ;
 int* msstab ;
 size_t ntohl (int ) ;

int __cookie_v4_check(const struct iphdr *iph, const struct tcphdr *th,
        u32 cookie)
{
 __u32 seq = ntohl(th->seq) - 1;
 __u32 mssind = check_tcp_syn_cookie(cookie, iph->saddr, iph->daddr,
         th->source, th->dest, seq);

 return mssind < ARRAY_SIZE(msstab) ? msstab[mssind] : 0;
}
