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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_lc_cred; int /*<<< orphan*/  plh_inode; } ;
struct nfs4_ff_layout_mirror {int /*<<< orphan*/ * mirror_ds; int /*<<< orphan*/  devid; } ;
struct nfs4_ff_layout_ds {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct nfs4_ff_layout_ds* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nfs4_ff_layout_ds* FUNC1 (struct nfs4_deviceid_node*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,struct nfs4_ff_layout_ds*) ; 
 struct nfs4_deviceid_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_deviceid_node*) ; 

__attribute__((used)) static bool
FUNC7(struct pnfs_layout_hdr *lo,
			 struct nfs4_ff_layout_mirror *mirror)
{
	if (mirror == NULL)
		goto outerr;
	if (mirror->mirror_ds == NULL) {
		struct nfs4_deviceid_node *node;
		struct nfs4_ff_layout_ds *mirror_ds = FUNC0(-ENODEV);

		node = FUNC5(FUNC3(lo->plh_inode),
				&mirror->devid, lo->plh_lc_cred,
				GFP_KERNEL);
		if (node)
			mirror_ds = FUNC1(node);

		/* check for race with another call to this function */
		if (FUNC4(&mirror->mirror_ds, NULL, mirror_ds) &&
		    mirror_ds != FUNC0(-ENODEV))
			FUNC6(node);
	}

	if (FUNC2(mirror->mirror_ds))
		goto outerr;

	return true;
outerr:
	return false;
}