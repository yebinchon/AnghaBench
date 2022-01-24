#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {int /*<<< orphan*/  identity; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_H_SIZE ; 
 scalar_t__ NODE_ID_LEN ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,struct sk_buff*,struct tipc_media_addr*) ; 
 struct sk_buff* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,struct tipc_bearer*) ; 

__attribute__((used)) static void FUNC6(struct net *net, u32 mtyp, u32 dst,
			       u32 src, u32 sugg_addr,
			       struct tipc_media_addr *maddr,
			       struct tipc_bearer *b)
{
	struct tipc_msg *hdr;
	struct sk_buff *skb;

	skb = FUNC4(MAX_H_SIZE + NODE_ID_LEN, GFP_ATOMIC);
	if (!skb)
		return;
	hdr = FUNC0(skb);
	FUNC5(net, skb, mtyp, b);
	FUNC2(hdr, sugg_addr);
	FUNC1(hdr, dst);
	FUNC3(net, b->identity, skb, maddr);
}