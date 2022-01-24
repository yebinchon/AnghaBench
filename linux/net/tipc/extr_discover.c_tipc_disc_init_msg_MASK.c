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
struct tipc_net {int /*<<< orphan*/  net_id; int /*<<< orphan*/  random; int /*<<< orphan*/  trial_addr; } ;
struct tipc_msg {int dummy; } ;
struct tipc_bearer {int /*<<< orphan*/  addr; TYPE_1__* media; int /*<<< orphan*/  domain; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* addr2msg ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_CONFIG ; 
 scalar_t__ MAX_H_SIZE ; 
 scalar_t__ NODE_ID_LEN ; 
 int /*<<< orphan*/  TIPC_NODE_CAPABILITIES ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC11 (struct net*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*) ; 

__attribute__((used)) static void FUNC13(struct net *net, struct sk_buff *skb,
			       u32 mtyp,  struct tipc_bearer *b)
{
	struct tipc_net *tn = FUNC11(net);
	u32 dest_domain = b->domain;
	struct tipc_msg *hdr;

	hdr = FUNC0(skb);
	FUNC10(tn->trial_addr, hdr, LINK_CONFIG, mtyp,
		      MAX_H_SIZE, dest_domain);
	FUNC8(hdr, MAX_H_SIZE + NODE_ID_LEN);
	FUNC7(hdr, 1);
	FUNC6(hdr, tn->random);
	FUNC4(hdr, TIPC_NODE_CAPABILITIES);
	FUNC3(hdr, dest_domain);
	FUNC2(hdr, tn->net_id);
	b->media->addr2msg(FUNC1(hdr), &b->addr);
	FUNC5(hdr, FUNC12(net));
}