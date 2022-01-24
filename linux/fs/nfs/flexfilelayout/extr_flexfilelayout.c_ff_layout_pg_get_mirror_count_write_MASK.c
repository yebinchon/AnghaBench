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
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_inode; int /*<<< orphan*/  pg_error; } ;
struct nfs_page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  layout; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IOMODE_RW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC8(struct nfs_pageio_descriptor *pgio,
				    struct nfs_page *req)
{
	if (!pgio->pg_lseg) {
		pgio->pg_lseg = FUNC6(pgio->pg_inode,
						   FUNC5(req),
						   0,
						   NFS4_MAX_UINT64,
						   IOMODE_RW,
						   false,
						   GFP_NOFS);
		if (FUNC1(pgio->pg_lseg)) {
			pgio->pg_error = FUNC3(pgio->pg_lseg);
			pgio->pg_lseg = NULL;
			goto out;
		}
	}
	if (pgio->pg_lseg)
		return FUNC0(pgio->pg_lseg);

	FUNC7(pgio->pg_inode,
			0, NFS4_MAX_UINT64, IOMODE_RW,
			FUNC2(pgio->pg_inode)->layout,
			pgio->pg_lseg);
	/* no lseg means that pnfs is not in use, so no mirroring here */
	FUNC4(pgio);
out:
	return 1;
}