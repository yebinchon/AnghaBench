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
struct x25_neigh {int global_facil_mask; int /*<<< orphan*/  node; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  t20; scalar_t__ extended; int /*<<< orphan*/  state; struct net_device* dev; int /*<<< orphan*/  t20timer; int /*<<< orphan*/  queue; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  X25_LINK_STATE_0 ; 
 int X25_MASK_PACKET_SIZE ; 
 int X25_MASK_REVERSE ; 
 int X25_MASK_THROUGHPUT ; 
 int X25_MASK_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct x25_neigh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_x25_restart_request_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  x25_neigh_list ; 
 int /*<<< orphan*/  x25_neigh_list_lock ; 
 int /*<<< orphan*/  x25_t20timer_expiry ; 

void FUNC8(struct net_device *dev)
{
	struct x25_neigh *nb = FUNC1(sizeof(*nb), GFP_ATOMIC);

	if (!nb)
		return;

	FUNC4(&nb->queue);
	FUNC5(&nb->t20timer, x25_t20timer_expiry, 0);

	FUNC0(dev);
	nb->dev      = dev;
	nb->state    = X25_LINK_STATE_0;
	nb->extended = 0;
	/*
	 * Enables negotiation
	 */
	nb->global_facil_mask = X25_MASK_REVERSE |
				       X25_MASK_THROUGHPUT |
				       X25_MASK_PACKET_SIZE |
				       X25_MASK_WINDOW_SIZE;
	nb->t20      = sysctl_x25_restart_request_timeout;
	FUNC3(&nb->refcnt, 1);

	FUNC6(&x25_neigh_list_lock);
	FUNC2(&nb->node, &x25_neigh_list);
	FUNC7(&x25_neigh_list_lock);
}