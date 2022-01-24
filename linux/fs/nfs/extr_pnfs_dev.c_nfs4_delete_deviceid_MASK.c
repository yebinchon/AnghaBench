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
struct pnfs_layoutdriver_type {int dummy; } ;
struct nfs_client {int dummy; } ;
struct nfs4_deviceid_node {int /*<<< orphan*/  flags; int /*<<< orphan*/  node; } ;
struct nfs4_deviceid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DEVICEID_NOCACHE ; 
 struct nfs4_deviceid_node* FUNC0 (struct pnfs_layoutdriver_type const*,struct nfs_client const*,struct nfs4_deviceid const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_deviceid const*) ; 
 int /*<<< orphan*/  nfs4_deviceid_lock ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_deviceid_node*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(const struct pnfs_layoutdriver_type *ld,
			 const struct nfs_client *clp, const struct nfs4_deviceid *id)
{
	struct nfs4_deviceid_node *d;

	FUNC7(&nfs4_deviceid_lock);
	FUNC5();
	d = FUNC0(ld, clp, id, FUNC3(id));
	FUNC6();
	if (!d) {
		FUNC8(&nfs4_deviceid_lock);
		return;
	}
	FUNC2(&d->node);
	FUNC1(NFS_DEVICEID_NOCACHE, &d->flags);
	FUNC8(&nfs4_deviceid_lock);

	/* balance the initial ref set in pnfs_insert_deviceid */
	FUNC4(d);
}