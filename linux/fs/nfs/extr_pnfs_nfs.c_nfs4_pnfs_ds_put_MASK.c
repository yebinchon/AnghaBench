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
struct nfs4_pnfs_ds {int /*<<< orphan*/  ds_node; int /*<<< orphan*/  ds_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_pnfs_ds*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs4_ds_cache_lock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nfs4_pnfs_ds *ds)
{
	if (FUNC2(&ds->ds_count,
				&nfs4_ds_cache_lock)) {
		FUNC1(&ds->ds_node);
		FUNC3(&nfs4_ds_cache_lock);
		FUNC0(ds);
	}
}