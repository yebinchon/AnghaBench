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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  addr_len; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; } ;
struct TYPE_4__ {int /*<<< orphan*/  sa_family; int /*<<< orphan*/  sa_data; } ;
struct arpreq {int /*<<< orphan*/  arp_dev; TYPE_2__ arp_ha; int /*<<< orphan*/  arp_flags; int /*<<< orphan*/  arp_pa; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENXIO ; 
 int NUD_NOARP ; 
 int /*<<< orphan*/  FUNC0 (struct neighbour*) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct arpreq *r, struct net_device *dev)
{
	__be32 ip = ((struct sockaddr_in *) &r->arp_pa)->sin_addr.s_addr;
	struct neighbour *neigh;
	int err = -ENXIO;

	neigh = FUNC2(&arp_tbl, &ip, dev);
	if (neigh) {
		if (!(neigh->nud_state & NUD_NOARP)) {
			FUNC4(&neigh->lock);
			FUNC1(r->arp_ha.sa_data, neigh->ha, dev->addr_len);
			r->arp_flags = FUNC0(neigh);
			FUNC5(&neigh->lock);
			r->arp_ha.sa_family = dev->type;
			FUNC6(r->arp_dev, dev->name, sizeof(r->arp_dev));
			err = 0;
		}
		FUNC3(neigh);
	}
	return err;
}