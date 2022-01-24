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
typedef  scalar_t__ u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs4_ff_layout_mirror {TYPE_1__* mirror_ds; } ;
struct nfs4_deviceid_node {int dummy; } ;
struct TYPE_2__ {struct nfs4_deviceid_node id_node; } ;

/* Variables and functions */
 struct nfs4_ff_layout_mirror* FUNC0 (struct pnfs_layout_segment*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct pnfs_layout_segment*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_deviceid_node*) ; 

__attribute__((used)) static bool FUNC4(struct pnfs_layout_segment *lseg)
{
	struct nfs4_ff_layout_mirror *mirror;
	struct nfs4_deviceid_node *devid;
	u32 idx;

	for (idx = 0; idx < FUNC1(lseg); idx++) {
		mirror = FUNC0(lseg, idx);
		if (mirror) {
			if (!mirror->mirror_ds)
				return true;
			if (FUNC2(mirror->mirror_ds))
				continue;
			devid = &mirror->mirror_ds->id_node;
			if (!FUNC3(devid))
				return true;
		}
	}

	return false;
}