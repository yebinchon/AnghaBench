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
struct tipc_net {int /*<<< orphan*/  sk_rht; } ;
struct rhashtable_iter {int dummy; } ;
struct netlink_callback {long* args; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rhashtable_iter* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rhashtable_iter*) ; 
 struct tipc_net* FUNC2 (struct net*) ; 

int FUNC3(struct netlink_callback *cb, struct net *net)
{
	/* tipc_nl_name_table_dump() uses cb->args[0...3]. */
	struct rhashtable_iter *iter = (void *)cb->args[4];
	struct tipc_net *tn = FUNC2(net);

	if (!iter) {
		iter = FUNC0(sizeof(*iter), GFP_KERNEL);
		if (!iter)
			return -ENOMEM;

		cb->args[4] = (long)iter;
	}

	FUNC1(&tn->sk_rht, iter);
	return 0;
}