#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_priority; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ len; int /*<<< orphan*/  tstamp; int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; int /*<<< orphan*/  ignore_df; int /*<<< orphan*/ * sk; int /*<<< orphan*/ * destructor; scalar_t__ truesize; int /*<<< orphan*/  data_len; struct sk_buff* next; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_idev; int /*<<< orphan*/  dst; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {unsigned char nexthdr; struct in6_addr daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  hop_limit; } ;
struct ipv6_txoptions {scalar_t__ opt_nflen; scalar_t__ opt_flen; } ;
struct ipv6_pinfo {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  transmit_time; int /*<<< orphan*/  mark; scalar_t__ dst; } ;
struct flowi6 {unsigned char flowi6_proto; int /*<<< orphan*/  saddr; int /*<<< orphan*/  flowlabel; struct in6_addr daddr; } ;
struct TYPE_6__ {struct flowi6 ip6; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct inet_cork_full {TYPE_3__ base; TYPE_2__ fl; } ;
struct inet6_dev {int dummy; } ;
struct inet6_cork {int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  tclass; struct ipv6_txoptions* opt; } ;
struct TYPE_10__ {int /*<<< orphan*/  icmp6_type; } ;
struct TYPE_9__ {struct sk_buff* frag_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_OUTMSGS ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned char IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 struct sk_buff* FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC6 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct ipv6_pinfo*) ; 
 int /*<<< orphan*/  FUNC9 (struct inet_cork_full*,struct inet6_cork*) ; 
 struct inet6_dev* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ipv6hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flowi6*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 struct ipv6hdr* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct ipv6_txoptions*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct ipv6_txoptions*,unsigned char*,struct in6_addr**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 TYPE_4__* FUNC24 (struct sk_buff*) ; 
 struct net* FUNC25 (struct sock*) ; 

struct sk_buff *FUNC26(struct sock *sk,
			       struct sk_buff_head *queue,
			       struct inet_cork_full *cork,
			       struct inet6_cork *v6_cork)
{
	struct sk_buff *skb, *tmp_skb;
	struct sk_buff **tail_skb;
	struct in6_addr final_dst_buf, *final_dst = &final_dst_buf;
	struct ipv6_pinfo *np = FUNC7(sk);
	struct net *net = FUNC25(sk);
	struct ipv6hdr *hdr;
	struct ipv6_txoptions *opt = v6_cork->opt;
	struct rt6_info *rt = (struct rt6_info *)cork->base.dst;
	struct flowi6 *fl6 = &cork->fl.u.ip6;
	unsigned char proto = fl6->flowi6_proto;

	skb = FUNC3(queue);
	if (!skb)
		goto out;
	tail_skb = &(FUNC24(skb)->frag_list);

	/* move skb->data to ip header from ext header */
	if (skb->data < FUNC19(skb))
		FUNC4(skb, FUNC21(skb));
	while ((tmp_skb = FUNC3(queue)) != NULL) {
		FUNC4(tmp_skb, FUNC20(skb));
		*tail_skb = tmp_skb;
		tail_skb = &(tmp_skb->next);
		skb->len += tmp_skb->len;
		skb->data_len += tmp_skb->len;
		skb->truesize += tmp_skb->truesize;
		tmp_skb->destructor = NULL;
		tmp_skb->sk = NULL;
	}

	/* Allow local fragmentation. */
	skb->ignore_df = FUNC13(sk);

	*final_dst = fl6->daddr;
	FUNC4(skb, FUNC20(skb));
	if (opt && opt->opt_flen)
		FUNC15(skb, opt, &proto);
	if (opt && opt->opt_nflen)
		FUNC16(skb, opt, &proto, &final_dst, &fl6->saddr);

	FUNC22(skb, sizeof(struct ipv6hdr));
	FUNC23(skb);
	hdr = FUNC14(skb);

	FUNC11(hdr, v6_cork->tclass,
		     FUNC12(net, skb, fl6->flowlabel,
					FUNC8(net, np), fl6));
	hdr->hop_limit = v6_cork->hop_limit;
	hdr->nexthdr = proto;
	hdr->saddr = fl6->saddr;
	hdr->daddr = *final_dst;

	skb->priority = sk->sk_priority;
	skb->mark = cork->base.mark;

	skb->tstamp = cork->base.transmit_time;

	FUNC18(skb, FUNC5(&rt->dst));
	FUNC2(net, rt->rt6i_idev, IPSTATS_MIB_OUT, skb->len);
	if (proto == IPPROTO_ICMPV6) {
		struct inet6_dev *idev = FUNC10(FUNC17(skb));

		FUNC0(net, idev, FUNC6(skb)->icmp6_type);
		FUNC1(net, idev, ICMP6_MIB_OUTMSGS);
	}

	FUNC9(cork, v6_cork);
out:
	return skb;
}