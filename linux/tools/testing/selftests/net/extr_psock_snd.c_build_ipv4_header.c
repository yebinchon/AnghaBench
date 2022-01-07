
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct iphdr {int ihl; int version; int ttl; int check; void* daddr; void* saddr; int protocol; void* id; void* tot_len; } ;


 int IPPROTO_UDP ;
 int build_ip_csum (void*,int,int ) ;
 void* htonl (int) ;
 void* htons (int) ;

__attribute__((used)) static int build_ipv4_header(void *header, int payload_len)
{
 struct iphdr *iph = header;

 iph->ihl = 5;
 iph->version = 4;
 iph->ttl = 8;
 iph->tot_len = htons(sizeof(*iph) + sizeof(struct udphdr) + payload_len);
 iph->id = htons(1337);
 iph->protocol = IPPROTO_UDP;
 iph->saddr = htonl((172 << 24) | (17 << 16) | 2);
 iph->daddr = htonl((172 << 24) | (17 << 16) | 1);
 iph->check = build_ip_csum((void *) iph, iph->ihl << 1, 0);

 return iph->ihl << 2;
}
