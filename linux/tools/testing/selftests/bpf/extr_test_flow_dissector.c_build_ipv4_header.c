
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef void* uint32_t ;
struct iphdr {int ihl; int version; int ttl; int check; void* daddr; void* saddr; void* protocol; void* id; void* tot_len; void* tos; } ;


 int build_ip_csum (void*,int,int ) ;
 void* htons (int) ;

__attribute__((used)) static void build_ipv4_header(void *header, uint8_t proto,
         uint32_t src, uint32_t dst,
         int payload_len, uint8_t tos)
{
 struct iphdr *iph = header;

 iph->ihl = 5;
 iph->version = 4;
 iph->tos = tos;
 iph->ttl = 8;
 iph->tot_len = htons(sizeof(*iph) + payload_len);
 iph->id = htons(1337);
 iph->protocol = proto;
 iph->saddr = src;
 iph->daddr = dst;
 iph->check = build_ip_csum((void *) iph, iph->ihl << 1, 0);
}
