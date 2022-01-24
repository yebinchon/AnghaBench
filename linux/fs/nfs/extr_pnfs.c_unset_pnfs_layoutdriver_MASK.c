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
struct nfs_server {TYPE_1__* pnfs_curr_ld; TYPE_2__* nfs_client; } ;
struct TYPE_4__ {int /*<<< orphan*/  cl_mds_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* clear_layoutdriver ) (struct nfs_server*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_server*) ; 

void
FUNC4(struct nfs_server *nfss)
{
	if (nfss->pnfs_curr_ld) {
		if (nfss->pnfs_curr_ld->clear_layoutdriver)
			nfss->pnfs_curr_ld->clear_layoutdriver(nfss);
		/* Decrement the MDS count. Purge the deviceid cache if zero */
		if (FUNC0(&nfss->nfs_client->cl_mds_count))
			FUNC2(nfss->nfs_client);
		FUNC1(nfss->pnfs_curr_ld->owner);
	}
	nfss->pnfs_curr_ld = NULL;
}