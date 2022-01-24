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
struct nfs4_pnfs_ds {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  deviceid; } ;
struct nfs4_file_layout_dsaddr {int ds_num; int /*<<< orphan*/  stripe_indices; struct nfs4_pnfs_ds** ds_list; TYPE_1__ id_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 TYPE_2__ id_node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_file_layout_dsaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_pnfs_ds*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct nfs4_file_layout_dsaddr *dsaddr)
{
	struct nfs4_pnfs_ds *ds;
	int i;

	FUNC3(&dsaddr->id_node.deviceid);

	for (i = 0; i < dsaddr->ds_num; i++) {
		ds = dsaddr->ds_list[i];
		if (ds != NULL)
			FUNC2(ds);
	}
	FUNC0(dsaddr->stripe_indices);
	FUNC1(dsaddr, id_node.rcu);
}