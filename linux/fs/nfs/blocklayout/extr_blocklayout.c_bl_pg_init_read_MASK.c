#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_pageio_descriptor {TYPE_1__* pg_lseg; int /*<<< orphan*/  pg_inode; } ;
struct nfs_page {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pls_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LSEG_UNAVAILABLE ; 
 int /*<<< orphan*/  SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_pageio_descriptor*,struct nfs_page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
	if (!FUNC0(pgio, req, SECTOR_SIZE, false)) {
		FUNC1(pgio);
		return;
	}

	FUNC3(pgio, req);

	if (pgio->pg_lseg &&
		FUNC5(NFS_LSEG_UNAVAILABLE, &pgio->pg_lseg->pls_flags)) {
		FUNC2(pgio->pg_inode, pgio->pg_lseg);
		FUNC4(pgio->pg_lseg);
		FUNC1(pgio);
	}
}