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
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  ack; int /*<<< orphan*/  syn; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  rst; } ;
struct synproxy_options {int options; scalar_t__ tsecr; scalar_t__ tsval; } ;
struct synproxy_net {TYPE_2__* stats; } ;
struct sk_buff {int dummy; } ;
struct nf_hook_state {struct net* net; } ;
struct nf_conn_synproxy {scalar_t__ isn; scalar_t__ its; scalar_t__ tsoff; } ;
struct ip_ct_tcp {int state; } ;
struct TYPE_4__ {struct ip_ct_tcp tcp; } ;
struct nf_conn {TYPE_1__ proto; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  _th ;
struct TYPE_6__ {scalar_t__ protocol; } ;
struct TYPE_5__ {int /*<<< orphan*/  cookie_retrans; int /*<<< orphan*/  conn_reopened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPCT_SEQADJ ; 
 int /*<<< orphan*/  IPCT_SYNPROXY ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_CT_DIR_ORIGINAL ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 unsigned int NF_STOLEN ; 
 int NF_SYNPROXY_OPT_MSS ; 
 int NF_SYNPROXY_OPT_SACK_PERM ; 
 int NF_SYNPROXY_OPT_TIMESTAMP ; 
 int NF_SYNPROXY_OPT_WSCALE ; 
#define  TCP_CONNTRACK_CLOSE 130 
#define  TCP_CONNTRACK_SYN_RECV 129 
#define  TCP_CONNTRACK_SYN_SENT 128 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 struct nf_conn* FUNC5 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*,int,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 struct nf_conn_synproxy* FUNC8 (struct nf_conn*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC10 (struct sk_buff*,unsigned int,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,unsigned int,struct tcphdr*,struct synproxy_options*) ; 
 struct synproxy_net* FUNC13 (struct net*) ; 
 int /*<<< orphan*/  FUNC14 (struct net*,struct sk_buff*,struct tcphdr*,struct synproxy_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net*,struct sk_buff*,struct tcphdr*,struct synproxy_options*) ; 
 int /*<<< orphan*/  FUNC16 (struct net*,struct ip_ct_tcp const*,struct sk_buff*,struct tcphdr*,struct synproxy_options*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,unsigned int,struct tcphdr*,struct nf_conn*,int,struct nf_conn_synproxy*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC19(void *priv, struct sk_buff *skb,
		   const struct nf_hook_state *nhs)
{
	struct net *net = nhs->net;
	struct synproxy_net *snet = FUNC13(net);
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct;
	struct nf_conn_synproxy *synproxy;
	struct synproxy_options opts = {};
	const struct ip_ct_tcp *state;
	struct tcphdr *th, _th;
	unsigned int thoff;

	ct = FUNC5(skb, &ctinfo);
	if (!ct)
		return NF_ACCEPT;

	synproxy = FUNC8(ct);
	if (!synproxy)
		return NF_ACCEPT;

	if (FUNC7(skb) ||
	    FUNC2(skb)->protocol != IPPROTO_TCP)
		return NF_ACCEPT;

	thoff = FUNC3(skb);
	th = FUNC10(skb, thoff, sizeof(_th), &_th);
	if (!th)
		return NF_DROP;

	state = &ct->proto.tcp;
	switch (state->state) {
	case TCP_CONNTRACK_CLOSE:
		if (th->rst && FUNC0(ctinfo) != IP_CT_DIR_ORIGINAL) {
			FUNC6(ct, ctinfo, synproxy->isn -
						      FUNC9(th->seq) + 1);
			break;
		}

		if (!th->syn || th->ack ||
		    FUNC0(ctinfo) != IP_CT_DIR_ORIGINAL)
			break;

		/* Reopened connection - reset the sequence number and timestamp
		 * adjustments, they will get initialized once the connection is
		 * reestablished.
		 */
		FUNC6(ct, ctinfo, 0);
		synproxy->tsoff = 0;
		FUNC18(snet->stats->conn_reopened);

		/* fall through */
	case TCP_CONNTRACK_SYN_SENT:
		if (!FUNC12(skb, thoff, th, &opts))
			return NF_DROP;

		if (!th->syn && th->ack &&
		    FUNC0(ctinfo) == IP_CT_DIR_ORIGINAL) {
			/* Keep-Alives are sent with SEG.SEQ = SND.NXT-1,
			 * therefore we need to add 1 to make the SYN sequence
			 * number match the one of first SYN.
			 */
			if (FUNC14(net, skb, th, &opts,
						     FUNC9(th->seq) + 1)) {
				FUNC18(snet->stats->cookie_retrans);
				FUNC1(skb);
				return NF_STOLEN;
			} else {
				return NF_DROP;
			}
		}

		synproxy->isn = FUNC9(th->ack_seq);
		if (opts.options & NF_SYNPROXY_OPT_TIMESTAMP)
			synproxy->its = opts.tsecr;

		FUNC4(IPCT_SYNPROXY, ct);
		break;
	case TCP_CONNTRACK_SYN_RECV:
		if (!th->syn || !th->ack)
			break;

		if (!FUNC12(skb, thoff, th, &opts))
			return NF_DROP;

		if (opts.options & NF_SYNPROXY_OPT_TIMESTAMP) {
			synproxy->tsoff = opts.tsval - synproxy->its;
			FUNC4(IPCT_SYNPROXY, ct);
		}

		opts.options &= ~(NF_SYNPROXY_OPT_MSS |
				  NF_SYNPROXY_OPT_WSCALE |
				  NF_SYNPROXY_OPT_SACK_PERM);

		FUNC11(opts.tsval, opts.tsecr);
		FUNC16(net, state, skb, th, &opts);

		FUNC6(ct, ctinfo, synproxy->isn - FUNC9(th->seq));
		FUNC4(IPCT_SEQADJ, ct);

		FUNC11(opts.tsval, opts.tsecr);
		FUNC15(net, skb, th, &opts);

		FUNC1(skb);
		return NF_STOLEN;
	default:
		break;
	}

	FUNC17(skb, thoff, th, ct, ctinfo, synproxy);
	return NF_ACCEPT;
}