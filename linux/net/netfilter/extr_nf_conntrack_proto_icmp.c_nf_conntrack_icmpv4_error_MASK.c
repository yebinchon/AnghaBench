#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union nf_inet_addr {int /*<<< orphan*/  ip; } ;
struct sk_buff {int dummy; } ;
struct nf_hook_state {scalar_t__ hook; TYPE_2__* net; } ;
struct nf_conn {int dummy; } ;
struct icmphdr {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  outer_daddr ;
typedef  int /*<<< orphan*/  _ih ;
struct TYPE_6__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {scalar_t__ sysctl_checksum; } ;
struct TYPE_5__ {TYPE_1__ ct; } ;

/* Variables and functions */
 scalar_t__ ICMP_DEST_UNREACH ; 
 scalar_t__ ICMP_PARAMETERPROB ; 
 scalar_t__ ICMP_REDIRECT ; 
 scalar_t__ ICMP_SOURCE_QUENCH ; 
 scalar_t__ ICMP_TIME_EXCEEDED ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 int NF_ACCEPT ; 
 scalar_t__ NF_INET_PRE_ROUTING ; 
 scalar_t__ NR_ICMP_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nf_hook_state const*,char*) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (union nf_inet_addr*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nf_conn*,struct sk_buff*,unsigned int,struct nf_hook_state const*,int /*<<< orphan*/ ,union nf_inet_addr*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 struct icmphdr* FUNC5 (struct sk_buff*,unsigned int,int,struct icmphdr*) ; 

int FUNC6(struct nf_conn *tmpl,
			      struct sk_buff *skb, unsigned int dataoff,
			      const struct nf_hook_state *state)
{
	union nf_inet_addr outer_daddr;
	const struct icmphdr *icmph;
	struct icmphdr _ih;

	/* Not enough header? */
	icmph = FUNC5(skb, dataoff, sizeof(_ih), &_ih);
	if (icmph == NULL) {
		FUNC0(skb, state, "short packet");
		return -NF_ACCEPT;
	}

	/* See nf_conntrack_proto_tcp.c */
	if (state->net->ct.sysctl_checksum &&
	    state->hook == NF_INET_PRE_ROUTING &&
	    FUNC4(skb, state->hook, dataoff, IPPROTO_ICMP)) {
		FUNC0(skb, state, "bad hw icmp checksum");
		return -NF_ACCEPT;
	}

	/*
	 *	18 is the highest 'known' ICMP type. Anything else is a mystery
	 *
	 *	RFC 1122: 3.2.2  Unknown ICMP messages types MUST be silently
	 *		  discarded.
	 */
	if (icmph->type > NR_ICMP_TYPES) {
		FUNC0(skb, state, "invalid icmp type");
		return -NF_ACCEPT;
	}

	/* Need to track icmp error message? */
	if (icmph->type != ICMP_DEST_UNREACH &&
	    icmph->type != ICMP_SOURCE_QUENCH &&
	    icmph->type != ICMP_TIME_EXCEEDED &&
	    icmph->type != ICMP_PARAMETERPROB &&
	    icmph->type != ICMP_REDIRECT)
		return NF_ACCEPT;

	FUNC2(&outer_daddr, 0, sizeof(outer_daddr));
	outer_daddr.ip = FUNC1(skb)->daddr;

	dataoff += sizeof(*icmph);
	return FUNC3(tmpl, skb, dataoff, state,
				       IPPROTO_ICMP, &outer_daddr);
}