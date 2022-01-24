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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct netlink_callback {scalar_t__* args; } ;
struct net {int dummy; } ;
struct fib6_walker {scalar_t__ skip; scalar_t__ skip_in_node; scalar_t__ count; TYPE_1__* root; TYPE_1__* node; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int fn_sernum; } ;
struct fib6_table {int /*<<< orphan*/  tb6_lock; TYPE_1__ tb6_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWS_INIT ; 
 int FUNC0 (struct net*,struct fib6_walker*) ; 
 int FUNC1 (struct fib6_walker*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct fib6_walker*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fib6_table *table, struct sk_buff *skb,
			   struct netlink_callback *cb)
{
	struct net *net = FUNC3(skb->sk);
	struct fib6_walker *w;
	int res;

	w = (void *)cb->args[2];
	w->root = &table->tb6_root;

	if (cb->args[4] == 0) {
		w->count = 0;
		w->skip = 0;
		w->skip_in_node = 0;

		FUNC4(&table->tb6_lock);
		res = FUNC0(net, w);
		FUNC5(&table->tb6_lock);
		if (res > 0) {
			cb->args[4] = 1;
			cb->args[5] = w->root->fn_sernum;
		}
	} else {
		if (cb->args[5] != w->root->fn_sernum) {
			/* Begin at the root if the tree changed */
			cb->args[5] = w->root->fn_sernum;
			w->state = FWS_INIT;
			w->node = w->root;
			w->skip = w->count;
			w->skip_in_node = 0;
		} else
			w->skip = 0;

		FUNC4(&table->tb6_lock);
		res = FUNC1(w);
		FUNC5(&table->tb6_lock);
		if (res <= 0) {
			FUNC2(net, w);
			cb->args[4] = 0;
		}
	}

	return res;
}