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
struct neighbour {int /*<<< orphan*/  refcnt; } ;
struct neigh_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct neigh_table*,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC1 (struct neigh_table*,void const*,struct net_device*) ; 
 int /*<<< orphan*/  hits ; 
 int /*<<< orphan*/  lookups ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct neighbour *FUNC5(struct neigh_table *tbl, const void *pkey,
			       struct net_device *dev)
{
	struct neighbour *n;

	FUNC0(tbl, lookups);

	FUNC2();
	n = FUNC1(tbl, pkey, dev);
	if (n) {
		if (!FUNC4(&n->refcnt))
			n = NULL;
		FUNC0(tbl, hits);
	}

	FUNC3();
	return n;
}