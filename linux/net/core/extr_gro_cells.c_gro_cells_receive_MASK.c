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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int flags; int /*<<< orphan*/  rx_dropped; } ;
struct gro_cells {int /*<<< orphan*/  cells; } ;
struct gro_cell {int /*<<< orphan*/  napi; int /*<<< orphan*/  napi_skbs; } ;

/* Variables and functions */
 int IFF_UP ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int netdev_max_backlog ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 struct gro_cell* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct gro_cells *gcells, struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	struct gro_cell *cell;
	int res;

	FUNC6();
	if (FUNC11(!(dev->flags & IFF_UP)))
		goto drop;

	if (!gcells->cells || FUNC8(skb) || FUNC4(dev)) {
		res = FUNC5(skb);
		goto unlock;
	}

	cell = FUNC10(gcells->cells);

	if (FUNC9(&cell->napi_skbs) > netdev_max_backlog) {
drop:
		FUNC1(&dev->rx_dropped);
		FUNC2(skb);
		res = NET_RX_DROP;
		goto unlock;
	}

	FUNC0(&cell->napi_skbs, skb);
	if (FUNC9(&cell->napi_skbs) == 1)
		FUNC3(&cell->napi);

	res = NET_RX_SUCCESS;

unlock:
	FUNC7();
	return res;
}