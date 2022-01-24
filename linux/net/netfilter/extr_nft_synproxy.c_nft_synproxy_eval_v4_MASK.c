#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {int /*<<< orphan*/  seq; scalar_t__ ack; scalar_t__ syn; } ;
struct synproxy_options {int dummy; } ;
struct synproxy_net {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nf_synproxy_info {int dummy; } ;
struct nft_synproxy {struct nf_synproxy_info info; } ;
struct TYPE_2__ {void* code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct net {int dummy; } ;

/* Variables and functions */
 void* NF_DROP ; 
 void* NF_STOLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct net* FUNC1 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC2 (struct synproxy_options*,struct tcphdr const*,struct synproxy_net*,struct nf_synproxy_info*,struct nft_synproxy const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct synproxy_net* FUNC4 (struct net*) ; 
 scalar_t__ FUNC5 (struct net*,struct sk_buff*,struct tcphdr const*,struct synproxy_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,struct sk_buff*,struct tcphdr const*,struct synproxy_options*) ; 

__attribute__((used)) static void FUNC7(const struct nft_synproxy *priv,
				 struct nft_regs *regs,
				 const struct nft_pktinfo *pkt,
				 const struct tcphdr *tcp,
				 struct tcphdr *_tcph,
				 struct synproxy_options *opts)
{
	struct nf_synproxy_info info = priv->info;
	struct net *net = FUNC1(pkt);
	struct synproxy_net *snet = FUNC4(net);
	struct sk_buff *skb = pkt->skb;

	if (tcp->syn) {
		/* Initial SYN from client */
		FUNC2(opts, tcp, snet, &info, priv);
		FUNC6(net, skb, tcp, opts);
		FUNC0(skb);
		regs->verdict.code = NF_STOLEN;
	} else if (tcp->ack) {
		/* ACK from client */
		if (FUNC5(net, skb, tcp, opts,
					     FUNC3(tcp->seq))) {
			FUNC0(skb);
			regs->verdict.code = NF_STOLEN;
		} else {
			regs->verdict.code = NF_DROP;
		}
	}
}