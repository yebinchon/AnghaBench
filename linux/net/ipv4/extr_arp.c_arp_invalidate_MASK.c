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
struct neighbour {int nud_state; } ;
struct neigh_table {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENXIO ; 
 int NEIGH_UPDATE_F_ADMIN ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 int /*<<< orphan*/  NUD_FAILED ; 
 int NUD_NOARP ; 
 struct neigh_table arp_tbl ; 
 struct neighbour* FUNC0 (struct neigh_table*,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC2 (struct neighbour*,struct neigh_table*) ; 
 int FUNC3 (struct neighbour*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, __be32 ip)
{
	struct neighbour *neigh = FUNC0(&arp_tbl, &ip, dev);
	int err = -ENXIO;
	struct neigh_table *tbl = &arp_tbl;

	if (neigh) {
		if (neigh->nud_state & ~NUD_NOARP)
			err = FUNC3(neigh, NULL, NUD_FAILED,
					   NEIGH_UPDATE_F_OVERRIDE|
					   NEIGH_UPDATE_F_ADMIN, 0);
		FUNC4(&tbl->lock);
		FUNC1(neigh);
		FUNC2(neigh, tbl);
		FUNC5(&tbl->lock);
	}

	return err;
}