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
struct sk_buff {int dummy; } ;
struct netlink_sock {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int NETLINK_F_STRICT_CHK ; 
 struct netlink_sock* FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(struct sk_buff *skb)
{
	const struct netlink_sock *nlk = FUNC1(FUNC0(skb).sk);

	return nlk->flags & NETLINK_F_STRICT_CHK;
}