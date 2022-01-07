
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nft_table {int dummy; } ;
struct nft_ctx {int seq; int flags; int report; int portid; struct nlattr const* const* nla; struct nft_chain* chain; struct nft_table* table; scalar_t__ level; int family; struct net* net; } ;
struct nft_chain {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 TYPE_1__ NETLINK_CB (struct sk_buff const*) ;
 int nlmsg_report (struct nlmsghdr const*) ;

__attribute__((used)) static void nft_ctx_init(struct nft_ctx *ctx,
    struct net *net,
    const struct sk_buff *skb,
    const struct nlmsghdr *nlh,
    u8 family,
    struct nft_table *table,
    struct nft_chain *chain,
    const struct nlattr * const *nla)
{
 ctx->net = net;
 ctx->family = family;
 ctx->level = 0;
 ctx->table = table;
 ctx->chain = chain;
 ctx->nla = nla;
 ctx->portid = NETLINK_CB(skb).portid;
 ctx->report = nlmsg_report(nlh);
 ctx->flags = nlh->nlmsg_flags;
 ctx->seq = nlh->nlmsg_seq;
}
