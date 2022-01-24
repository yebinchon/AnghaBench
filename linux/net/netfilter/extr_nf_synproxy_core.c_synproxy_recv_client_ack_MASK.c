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
typedef  int /*<<< orphan*/  u32 ;
struct tcphdr {int /*<<< orphan*/  ack_seq; } ;
struct synproxy_options {int mss_option; int options; } ;
struct synproxy_net {TYPE_1__* stats; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cookie_valid; int /*<<< orphan*/  cookie_invalid; } ;

/* Variables and functions */
 int NF_SYNPROXY_OPT_MSS ; 
 int NF_SYNPROXY_OPT_TIMESTAMP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct tcphdr const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct synproxy_options*) ; 
 struct synproxy_net* FUNC4 (struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct sk_buff const*,struct tcphdr const*,struct synproxy_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

bool
FUNC7(struct net *net,
			 const struct sk_buff *skb, const struct tcphdr *th,
			 struct synproxy_options *opts, u32 recv_seq)
{
	struct synproxy_net *snet = FUNC4(net);
	int mss;

	mss = FUNC0(FUNC1(skb), th, FUNC2(th->ack_seq) - 1);
	if (mss == 0) {
		FUNC6(snet->stats->cookie_invalid);
		return false;
	}

	FUNC6(snet->stats->cookie_valid);
	opts->mss_option = mss;
	opts->options |= NF_SYNPROXY_OPT_MSS;

	if (opts->options & NF_SYNPROXY_OPT_TIMESTAMP)
		FUNC3(opts);

	FUNC5(net, skb, th, opts, recv_seq);
	return true;
}