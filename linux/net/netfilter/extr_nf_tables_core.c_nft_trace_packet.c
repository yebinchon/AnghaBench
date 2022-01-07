
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_traceinfo {struct nft_rule const* rule; } ;
struct nft_rule {int dummy; } ;
struct nft_chain {int dummy; } ;
typedef enum nft_trace_types { ____Placeholder_nft_trace_types } nft_trace_types ;


 int __nft_trace_packet (struct nft_traceinfo*,struct nft_chain const*,int) ;
 int nft_trace_enabled ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static inline void nft_trace_packet(struct nft_traceinfo *info,
        const struct nft_chain *chain,
        const struct nft_rule *rule,
        enum nft_trace_types type)
{
 if (static_branch_unlikely(&nft_trace_enabled)) {
  info->rule = rule;
  __nft_trace_packet(info, chain, type);
 }
}
