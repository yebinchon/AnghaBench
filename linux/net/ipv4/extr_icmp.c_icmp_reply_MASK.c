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
typedef  void* u32 ;
struct sock {void* sk_mark; } ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  mark; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net {int dummy; } ;
struct ipcm_cookie {TYPE_4__* opt; void* addr; } ;
struct inet_sock {int /*<<< orphan*/  tos; } ;
struct TYPE_13__ {void* faddr; scalar_t__ srr; scalar_t__ optlen; } ;
struct TYPE_11__ {TYPE_6__ opt; } ;
struct TYPE_12__ {TYPE_4__ opt; } ;
struct TYPE_9__ {int type; int code; scalar_t__ checksum; } ;
struct TYPE_10__ {TYPE_2__ icmph; } ;
struct icmp_bxm {TYPE_5__ replyopts; TYPE_3__ data; } ;
struct flowi4 {int /*<<< orphan*/  flowi4_oif; int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_uid; void* flowi4_mark; void* saddr; void* daddr; } ;
typedef  int /*<<< orphan*/  fl4 ;
typedef  void* __be32 ;
struct TYPE_14__ {int /*<<< orphan*/  tos; void* saddr; } ;

/* Variables and functions */
 void* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct flowi4*) ; 
 int /*<<< orphan*/  FUNC6 (struct icmp_bxm*,struct flowi4*,struct ipcm_cookie*,struct rtable**) ; 
 struct sock* FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,int,int) ; 
 scalar_t__ FUNC10 (struct net*,struct rtable*,struct flowi4*,int,int) ; 
 struct inet_sock* FUNC11 (struct sock*) ; 
 TYPE_7__* FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct net*,TYPE_6__*,struct sk_buff*) ; 
 struct rtable* FUNC14 (struct net*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC16 (struct ipcm_cookie*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct net*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct icmp_bxm *icmp_param, struct sk_buff *skb)
{
	struct ipcm_cookie ipc;
	struct rtable *rt = FUNC22(skb);
	struct net *net = FUNC3(rt->dst.dev);
	struct flowi4 fl4;
	struct sock *sk;
	struct inet_sock *inet;
	__be32 daddr, saddr;
	u32 mark = FUNC0(net, skb->mark);
	int type = icmp_param->data.icmph.type;
	int code = icmp_param->data.icmph.code;

	if (FUNC13(net, &icmp_param->replyopts.opt.opt, skb))
		return;

	/* Needed by both icmp_global_allow and icmp_xmit_lock */
	FUNC18();

	/* global icmp_msgs_per_sec */
	if (!FUNC9(net, type, code))
		goto out_bh_enable;

	sk = FUNC7(net);
	if (!sk)
		goto out_bh_enable;
	inet = FUNC11(sk);

	icmp_param->data.icmph.checksum = 0;

	FUNC16(&ipc);
	inet->tos = FUNC12(skb)->tos;
	sk->sk_mark = mark;
	daddr = ipc.addr = FUNC12(skb)->saddr;
	saddr = FUNC4(skb);

	if (icmp_param->replyopts.opt.opt.optlen) {
		ipc.opt = &icmp_param->replyopts.opt;
		if (ipc.opt->opt.srr)
			daddr = icmp_param->replyopts.opt.opt.faddr;
	}
	FUNC20(&fl4, 0, sizeof(fl4));
	fl4.daddr = daddr;
	fl4.saddr = saddr;
	fl4.flowi4_mark = mark;
	fl4.flowi4_uid = FUNC23(net, NULL);
	fl4.flowi4_tos = FUNC2(FUNC12(skb)->tos);
	fl4.flowi4_proto = IPPROTO_ICMP;
	fl4.flowi4_oif = FUNC17(skb->dev);
	FUNC21(skb, FUNC5(&fl4));
	rt = FUNC14(net, &fl4);
	if (FUNC1(rt))
		goto out_unlock;
	if (FUNC10(net, rt, &fl4, type, code))
		FUNC6(icmp_param, &fl4, &ipc, &rt);
	FUNC15(rt);
out_unlock:
	FUNC8(sk);
out_bh_enable:
	FUNC19();
}