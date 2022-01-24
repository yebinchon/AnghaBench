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
struct xfrm_trans_tasklet {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* finish ) (struct net*,struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 int ENOBUFS ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ netdev_max_backlog ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xfrm_trans_tasklet* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_trans_tasklet ; 

int FUNC5(struct sk_buff *skb,
		     int (*finish)(struct net *, struct sock *,
				   struct sk_buff *))
{
	struct xfrm_trans_tasklet *trans;

	trans = FUNC4(&xfrm_trans_tasklet);

	if (FUNC2(&trans->queue) >= netdev_max_backlog)
		return -ENOBUFS;

	FUNC0(skb)->finish = finish;
	FUNC1(&trans->queue, skb);
	FUNC3(&trans->tasklet);
	return 0;
}