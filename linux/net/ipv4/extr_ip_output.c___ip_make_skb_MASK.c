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
struct sock {scalar_t__ sk_protocol; int /*<<< orphan*/  sk_priority; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ len; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/  ignore_df; int /*<<< orphan*/ * sk; int /*<<< orphan*/ * destructor; scalar_t__ truesize; int /*<<< orphan*/  data_len; struct sk_buff* next; } ;
struct rtable {scalar_t__ rt_type; int /*<<< orphan*/  dst; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; int tos; scalar_t__ ttl; scalar_t__ protocol; int /*<<< orphan*/  frag_off; } ;
struct ip_options {int optlen; } ;
struct inet_sock {scalar_t__ pmtudisc; scalar_t__ mc_ttl; int tos; } ;
struct inet_cork {int flags; scalar_t__ ttl; int tos; int /*<<< orphan*/ * dst; int /*<<< orphan*/  transmit_time; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/  addr; struct ip_options* opt; } ;
struct icmphdr {int /*<<< orphan*/  type; } ;
struct flowi4 {int dummy; } ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 int IPCORK_OPT ; 
 scalar_t__ IPPROTO_ICMP ; 
 int /*<<< orphan*/  IP_DF ; 
 scalar_t__ IP_PMTUDISC_DO ; 
 scalar_t__ IP_PMTUDISC_PROBE ; 
 scalar_t__ RTN_MULTICAST ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct iphdr*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC7 (struct inet_cork*) ; 
 scalar_t__ FUNC8 (struct sock*,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct ip_options*,int /*<<< orphan*/ ,struct rtable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,struct sk_buff*,struct sock*) ; 
 scalar_t__ FUNC12 (struct inet_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 TYPE_1__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 struct net* FUNC20 (struct sock*) ; 

struct sk_buff *FUNC21(struct sock *sk,
			      struct flowi4 *fl4,
			      struct sk_buff_head *queue,
			      struct inet_cork *cork)
{
	struct sk_buff *skb, *tmp_skb;
	struct sk_buff **tail_skb;
	struct inet_sock *inet = FUNC5(sk);
	struct net *net = FUNC20(sk);
	struct ip_options *opt = NULL;
	struct rtable *rt = (struct rtable *)cork->dst;
	struct iphdr *iph;
	__be16 df = 0;
	__u8 ttl;

	skb = FUNC0(queue);
	if (!skb)
		goto out;
	tail_skb = &(FUNC18(skb)->frag_list);

	/* move skb->data to ip header from ext header */
	if (skb->data < FUNC15(skb))
		FUNC1(skb, FUNC17(skb));
	while ((tmp_skb = FUNC0(queue)) != NULL) {
		FUNC1(tmp_skb, FUNC16(skb));
		*tail_skb = tmp_skb;
		tail_skb = &(tmp_skb->next);
		skb->len += tmp_skb->len;
		skb->data_len += tmp_skb->len;
		skb->truesize += tmp_skb->truesize;
		tmp_skb->destructor = NULL;
		tmp_skb->sk = NULL;
	}

	/* Unless user demanded real pmtu discovery (IP_PMTUDISC_DO), we allow
	 * to fragment the frame generated here. No matter, what transforms
	 * how transforms change size of the packet, it will come out.
	 */
	skb->ignore_df = FUNC13(sk);

	/* DF bit is set when we want to see DF on outgoing frames.
	 * If ignore_df is set too, we still allow to fragment this frame
	 * locally. */
	if (inet->pmtudisc == IP_PMTUDISC_DO ||
	    inet->pmtudisc == IP_PMTUDISC_PROBE ||
	    (skb->len <= FUNC2(&rt->dst) &&
	     FUNC8(sk, &rt->dst)))
		df = FUNC3(IP_DF);

	if (cork->flags & IPCORK_OPT)
		opt = cork->opt;

	if (cork->ttl != 0)
		ttl = cork->ttl;
	else if (rt->rt_type == RTN_MULTICAST)
		ttl = inet->mc_ttl;
	else
		ttl = FUNC12(inet, &rt->dst);

	iph = FUNC9(skb);
	iph->version = 4;
	iph->ihl = 5;
	iph->tos = (cork->tos != -1) ? cork->tos : inet->tos;
	iph->frag_off = df;
	iph->ttl = ttl;
	iph->protocol = sk->sk_protocol;
	FUNC6(iph, fl4);
	FUNC11(net, skb, sk);

	if (opt) {
		iph->ihl += opt->optlen>>2;
		FUNC10(skb, opt, cork->addr, rt, 0);
	}

	skb->priority = (cork->tos != -1) ? cork->priority: sk->sk_priority;
	skb->mark = cork->mark;
	skb->tstamp = cork->transmit_time;
	/*
	 * Steal rt from cork.dst to avoid a pair of atomic_inc/atomic_dec
	 * on dst refcount
	 */
	cork->dst = NULL;
	FUNC14(skb, &rt->dst);

	if (iph->protocol == IPPROTO_ICMP)
		FUNC4(net, ((struct icmphdr *)
			FUNC19(skb))->type);

	FUNC7(cork);
out:
	return skb;
}