
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct TYPE_2__ {int thoff; } ;
struct nft_pktinfo {scalar_t__ tprot; TYPE_1__ xt; int skb; int tprot_set; } ;


 scalar_t__ IPPROTO_TCP ;
 unsigned int __tcp_hdrlen (struct tcphdr*) ;
 void* skb_header_pointer (int ,int ,unsigned int,void*) ;

__attribute__((used)) static void *
nft_tcp_header_pointer(const struct nft_pktinfo *pkt,
         unsigned int len, void *buffer, unsigned int *tcphdr_len)
{
 struct tcphdr *tcph;

 if (!pkt->tprot_set || pkt->tprot != IPPROTO_TCP)
  return ((void*)0);

 tcph = skb_header_pointer(pkt->skb, pkt->xt.thoff, sizeof(*tcph), buffer);
 if (!tcph)
  return ((void*)0);

 *tcphdr_len = __tcp_hdrlen(tcph);
 if (*tcphdr_len < sizeof(*tcph) || *tcphdr_len > len)
  return ((void*)0);

 return skb_header_pointer(pkt->skb, pkt->xt.thoff, *tcphdr_len, buffer);
}
