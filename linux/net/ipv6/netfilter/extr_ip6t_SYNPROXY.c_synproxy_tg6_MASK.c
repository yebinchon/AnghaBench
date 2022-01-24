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
struct xt_synproxy_info {int options; int /*<<< orphan*/  mss; } ;
struct xt_action_param {int /*<<< orphan*/  thoff; struct xt_synproxy_info* targinfo; } ;
struct tcphdr {int /*<<< orphan*/  seq; scalar_t__ syn; scalar_t__ rst; scalar_t__ fin; scalar_t__ ack; scalar_t__ cwr; scalar_t__ ece; } ;
struct synproxy_options {int options; int /*<<< orphan*/  mss_option; int /*<<< orphan*/  mss_encode; } ;
struct synproxy_net {TYPE_1__* stats; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  _th ;
struct TYPE_2__ {int /*<<< orphan*/  syn_received; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 unsigned int NF_DROP ; 
 unsigned int NF_STOLEN ; 
 unsigned int XT_CONTINUE ; 
 int XT_SYNPROXY_OPT_ECN ; 
 int XT_SYNPROXY_OPT_SACK_PERM ; 
 int XT_SYNPROXY_OPT_TIMESTAMP ; 
 int XT_SYNPROXY_OPT_WSCALE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xt_synproxy_info const*,struct synproxy_options*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,struct tcphdr*,struct synproxy_options*) ; 
 struct synproxy_net* FUNC6 (struct net*) ; 
 scalar_t__ FUNC7 (struct net*,struct sk_buff*,struct tcphdr*,struct synproxy_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct sk_buff*,struct tcphdr*,struct synproxy_options*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xt_action_param const*) ; 
 struct net* FUNC11 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC12(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct xt_synproxy_info *info = par->targinfo;
	struct net *net = FUNC11(par);
	struct synproxy_net *snet = FUNC6(net);
	struct synproxy_options opts = {};
	struct tcphdr *th, _th;

	if (FUNC1(skb, FUNC10(par), par->thoff, IPPROTO_TCP))
		return NF_DROP;

	th = FUNC3(skb, par->thoff, sizeof(_th), &_th);
	if (th == NULL)
		return NF_DROP;

	if (!FUNC5(skb, par->thoff, th, &opts))
		return NF_DROP;

	if (th->syn && !(th->ack || th->fin || th->rst)) {
		/* Initial SYN from client */
		FUNC9(snet->stats->syn_received);

		if (th->ece && th->cwr)
			opts.options |= XT_SYNPROXY_OPT_ECN;

		opts.options &= info->options;
		opts.mss_encode = opts.mss_option;
		opts.mss_option = info->mss;
		if (opts.options & XT_SYNPROXY_OPT_TIMESTAMP)
			FUNC4(info, &opts);
		else
			opts.options &= ~(XT_SYNPROXY_OPT_WSCALE |
					  XT_SYNPROXY_OPT_SACK_PERM |
					  XT_SYNPROXY_OPT_ECN);

		FUNC8(net, skb, th, &opts);
		FUNC0(skb);
		return NF_STOLEN;

	} else if (th->ack && !(th->fin || th->rst || th->syn)) {
		/* ACK from client */
		if (FUNC7(net, skb, th, &opts,
						  FUNC2(th->seq))) {
			FUNC0(skb);
			return NF_STOLEN;
		} else {
			return NF_DROP;
		}
	}

	return XT_CONTINUE;
}