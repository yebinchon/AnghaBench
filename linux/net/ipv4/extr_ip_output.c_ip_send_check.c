
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iphdr {int ihl; scalar_t__ check; } ;


 scalar_t__ ip_fast_csum (unsigned char*,int ) ;

void ip_send_check(struct iphdr *iph)
{
 iph->check = 0;
 iph->check = ip_fast_csum((unsigned char *)iph, iph->ihl);
}
