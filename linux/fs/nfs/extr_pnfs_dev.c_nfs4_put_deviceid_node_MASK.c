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
struct nfs4_deviceid_node {TYPE_1__* ld; int /*<<< orphan*/  ref; int /*<<< orphan*/  deviceid; int /*<<< orphan*/  nfs_client; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_deviceid_node ) (struct nfs4_deviceid_node*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DEVICEID_NOCACHE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_deviceid_node*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC5(struct nfs4_deviceid_node *d)
{
	if (FUNC4(NFS_DEVICEID_NOCACHE, &d->flags)) {
		if (FUNC0(&d->ref, -1, 2))
			return false;
		FUNC2(d->ld, d->nfs_client, &d->deviceid);
	}
	if (!FUNC1(&d->ref))
		return false;
	d->ld->free_deviceid_node(d);
	return true;
}