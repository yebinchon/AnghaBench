#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sock {int sk_bound_dev_if; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_mark; int /*<<< orphan*/  sk_sndbuf; int /*<<< orphan*/  sk_protocol; } ;
struct sk_buff {int skb_iif; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; int /*<<< orphan*/  mark; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  transmit_time; } ;
struct ipcm_cookie {TYPE_2__* opt; TYPE_1__ sockc; int /*<<< orphan*/  addr; } ;
struct ip_reply_arg {int bound_dev_if; scalar_t__ csumoffset; int /*<<< orphan*/  csum; TYPE_3__* iov; int /*<<< orphan*/  tos; int /*<<< orphan*/  uid; } ;
struct TYPE_14__ {int /*<<< orphan*/  faddr; scalar_t__ srr; scalar_t__ optlen; } ;
struct TYPE_9__ {TYPE_7__ opt; } ;
struct ip_options_data {TYPE_2__ opt; } ;
struct ip_options {int dummy; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_mark; } ;
typedef  int /*<<< orphan*/  __sum16 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_13__ {int /*<<< orphan*/  tos; } ;
struct TYPE_12__ {int /*<<< orphan*/  protocol; } ;
struct TYPE_11__ {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct TYPE_10__ {int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net*,TYPE_7__*,struct sk_buff*,struct ip_options const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct flowi4*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct flowi4*) ; 
 TYPE_6__* FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*,struct flowi4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct ipcm_cookie*,struct rtable**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 TYPE_5__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC13 (struct ip_reply_arg const*) ; 
 int /*<<< orphan*/  ip_reply_glue_bits ; 
 struct rtable* FUNC14 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC16 (struct ipcm_cookie*) ; 
 scalar_t__ FUNC17 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC19 (int /*<<< orphan*/ *) ; 
 struct rtable* FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 struct net* FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  sysctl_wmem_default ; 
 TYPE_4__* FUNC23 (struct sk_buff*) ; 
 scalar_t__ FUNC24 (int) ; 

void FUNC25(struct sock *sk, struct sk_buff *skb,
			   const struct ip_options *sopt,
			   __be32 daddr, __be32 saddr,
			   const struct ip_reply_arg *arg,
			   unsigned int len, u64 transmit_time)
{
	struct ip_options_data replyopts;
	struct ipcm_cookie ipc;
	struct flowi4 fl4;
	struct rtable *rt = FUNC20(skb);
	struct net *net = FUNC22(sk);
	struct sk_buff *nskb;
	int err;
	int oif;

	if (FUNC3(net, &replyopts.opt.opt, skb, sopt))
		return;

	FUNC16(&ipc);
	ipc.addr = daddr;
	ipc.sockc.transmit_time = transmit_time;

	if (replyopts.opt.opt.optlen) {
		ipc.opt = &replyopts.opt;

		if (replyopts.opt.opt.srr)
			daddr = replyopts.opt.opt.faddr;
	}

	oif = arg->bound_dev_if;
	if (!oif && FUNC17(net, skb->skb_iif))
		oif = skb->skb_iif;

	FUNC6(&fl4, oif,
			   FUNC0(net, skb->mark) ?: sk->sk_mark,
			   FUNC2(arg->tos),
			   RT_SCOPE_UNIVERSE, FUNC11(skb)->protocol,
			   FUNC13(arg),
			   daddr, saddr,
			   FUNC23(skb)->source, FUNC23(skb)->dest,
			   arg->uid);
	FUNC18(skb, FUNC7(&fl4));
	rt = FUNC14(net, &fl4);
	if (FUNC1(rt))
		return;

	FUNC8(sk)->tos = arg->tos;

	sk->sk_protocol = FUNC11(skb)->protocol;
	sk->sk_bound_dev_if = arg->bound_dev_if;
	sk->sk_sndbuf = sysctl_wmem_default;
	sk->sk_mark = fl4.flowi4_mark;
	err = FUNC9(sk, &fl4, ip_reply_glue_bits, arg->iov->iov_base,
			     len, 0, &ipc, &rt, MSG_DONTWAIT);
	if (FUNC24(err)) {
		FUNC10(sk);
		goto out;
	}

	nskb = FUNC19(&sk->sk_write_queue);
	if (nskb) {
		if (arg->csumoffset >= 0)
			*((__sum16 *)FUNC21(nskb) +
			  arg->csumoffset) = FUNC5(FUNC4(nskb->csum,
								arg->csum));
		nskb->ip_summed = CHECKSUM_NONE;
		FUNC12(sk, &fl4);
	}
out:
	FUNC15(rt);
}