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
struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct lowpan_802154_neigh {int /*<<< orphan*/  short_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE802154_ADDR_SHORT_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct lowpan_802154_neigh* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct neighbour*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct neighbour *n)
{
	struct lowpan_802154_neigh *neigh = FUNC1(FUNC2(n));

	/* default no short_addr is available for a neighbour */
	neigh->short_addr = FUNC0(IEEE802154_ADDR_SHORT_UNSPEC);
	return 0;
}