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
typedef  int /*<<< orphan*/  u16 ;
struct tipc_nlist {int dummy; } ;
struct tipc_msg {int dummy; } ;
struct tipc_mc_method {scalar_t__ rcast; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int capabilities; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCAST_H_SIZE ; 
 scalar_t__ MSG_FRAGMENTER ; 
 scalar_t__ TIPC_MCAST_MSG ; 
 int TIPC_MCAST_RBCTL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC3 (struct sk_buff*) ; 
 struct tipc_msg* FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int) ; 
 scalar_t__ FUNC9 (struct tipc_msg*) ; 
 scalar_t__ FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct net*,struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (struct net*) ; 
 int /*<<< orphan*/  FUNC16 (struct net*,struct sk_buff_head*,struct tipc_nlist*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct net *net, struct sk_buff *skb,
				struct tipc_mc_method *method,
				struct tipc_nlist *dests,
				u16 *cong_link_cnt)
{
	struct tipc_msg *hdr, *_hdr;
	struct sk_buff_head tmpq;
	struct sk_buff *_skb;

	/* Is a cluster supporting with new capabilities ? */
	if (!(FUNC15(net)->capabilities & TIPC_MCAST_RBCTL))
		return 0;

	hdr = FUNC3(skb);
	if (FUNC10(hdr) == MSG_FRAGMENTER)
		hdr = FUNC4(hdr);
	if (FUNC9(hdr) != TIPC_MCAST_MSG)
		return 0;

	/* Allocate dummy message */
	_skb = FUNC14(MCAST_H_SIZE, GFP_KERNEL);
	if (!_skb)
		return -ENOMEM;

	/* Preparing for 'synching' header */
	FUNC8(hdr, 1);

	/* Copy skb's header into a dummy header */
	FUNC11(_skb, hdr, MCAST_H_SIZE);
	FUNC12(_skb);

	/* Reverse method for dummy message */
	_hdr = FUNC3(_skb);
	FUNC7(_hdr, MCAST_H_SIZE);
	FUNC6(_hdr, !FUNC5(hdr));

	FUNC0(&tmpq);
	FUNC2(&tmpq, _skb);
	if (method->rcast)
		FUNC13(net, &tmpq, cong_link_cnt);
	else
		FUNC16(net, &tmpq, dests, cong_link_cnt);

	/* This queue should normally be empty by now */
	FUNC1(&tmpq);

	return 0;
}