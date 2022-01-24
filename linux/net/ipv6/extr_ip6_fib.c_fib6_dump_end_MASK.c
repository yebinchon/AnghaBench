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
struct netlink_callback {int* args; void* done; TYPE_1__* skb; } ;
struct net {int dummy; } ;
struct fib6_walker {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct fib6_walker*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_walker*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct netlink_callback *cb)
{
	struct net *net = FUNC2(cb->skb->sk);
	struct fib6_walker *w = (void *)cb->args[2];

	if (w) {
		if (cb->args[4]) {
			cb->args[4] = 0;
			FUNC0(net, w);
		}
		cb->args[2] = 0;
		FUNC1(w);
	}
	cb->done = (void *)cb->args[3];
	cb->args[1] = 3;
}