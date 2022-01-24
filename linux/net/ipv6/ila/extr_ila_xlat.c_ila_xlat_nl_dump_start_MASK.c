#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netlink_callback {long* args; TYPE_1__* skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rhash_table; } ;
struct ila_net {TYPE_2__ xlat; } ;
struct ila_dump_iter {scalar_t__ skip; int /*<<< orphan*/  rhiter; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ila_net_id ; 
 struct ila_dump_iter* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct ila_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct netlink_callback *cb)
{
	struct net *net = FUNC3(cb->skb->sk);
	struct ila_net *ilan = FUNC1(net, ila_net_id);
	struct ila_dump_iter *iter;

	iter = FUNC0(sizeof(*iter), GFP_KERNEL);
	if (!iter)
		return -ENOMEM;

	FUNC2(&ilan->xlat.rhash_table, &iter->rhiter);

	iter->skip = 0;
	cb->args[0] = (long)iter;

	return 0;
}