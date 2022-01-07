
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct iphdr {int version; int ihl; int ttl; int check; int tot_len; int protocol; int daddr; int saddr; scalar_t__ tos; } ;


 int IPPROTO_EGP ;
 int cfg_dst_addr ;
 int cfg_src_addr ;
 int get_ip_csum (void*,int) ;
 int htons (scalar_t__) ;
 int memset (struct iphdr*,int ,int) ;

__attribute__((used)) static int setup_iph(struct iphdr *iph, uint16_t payload_len)
{
 struct sockaddr_in *daddr = (void *) &cfg_dst_addr;
 struct sockaddr_in *saddr = (void *) &cfg_src_addr;

 memset(iph, 0, sizeof(*iph));

 iph->version = 4;
 iph->tos = 0;
 iph->ihl = 5;
 iph->ttl = 2;
 iph->saddr = saddr->sin_addr.s_addr;
 iph->daddr = daddr->sin_addr.s_addr;
 iph->protocol = IPPROTO_EGP;
 iph->tot_len = htons(sizeof(*iph) + payload_len);
 iph->check = get_ip_csum((void *) iph, iph->ihl << 1);

 return sizeof(*iph);
}
