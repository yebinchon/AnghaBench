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
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {TYPE_1__* media; int /*<<< orphan*/  up; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_msg ) (struct net*,struct sk_buff*,struct tipc_bearer*,struct tipc_media_addr*) ;} ;

/* Variables and functions */
 struct tipc_bearer* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct sk_buff*,struct tipc_bearer*,struct tipc_media_addr*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct net *net, u32 bearer_id,
			  struct sk_buff *skb,
			  struct tipc_media_addr *dest)
{
	struct tipc_msg *hdr = FUNC1(skb);
	struct tipc_bearer *b;

	FUNC5();
	b = FUNC0(net, bearer_id);
	if (FUNC3(b && (FUNC8(0, &b->up) || FUNC4(hdr))))
		b->media->send_msg(net, skb, b, dest);
	else
		FUNC2(skb);
	FUNC6();
}