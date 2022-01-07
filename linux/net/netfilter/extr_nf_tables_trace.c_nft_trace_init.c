
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_verdict {int dummy; } ;
struct nft_traceinfo {int trace; int packet_dumped; struct nft_verdict const* verdict; struct nft_pktinfo const* pkt; int basechain; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_chain {int dummy; } ;


 int nft_base_chain (struct nft_chain const*) ;

void nft_trace_init(struct nft_traceinfo *info, const struct nft_pktinfo *pkt,
      const struct nft_verdict *verdict,
      const struct nft_chain *chain)
{
 info->basechain = nft_base_chain(chain);
 info->trace = 1;
 info->packet_dumped = 0;
 info->pkt = pkt;
 info->verdict = verdict;
}
