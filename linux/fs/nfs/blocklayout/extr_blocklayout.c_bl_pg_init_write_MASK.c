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
typedef  int /*<<< orphan*/  u64 ;
struct nfs_pageio_descriptor {TYPE_1__* pg_lseg; int /*<<< orphan*/  pg_inode; int /*<<< orphan*/ * pg_dreq; } ;
struct nfs_page {int /*<<< orphan*/  wb_index; } ;
struct TYPE_3__ {int /*<<< orphan*/  pls_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LSEG_UNAVAILABLE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_pageio_descriptor*,struct nfs_page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct nfs_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
	u64 wb_size;

	if (!FUNC0(pgio, req, PAGE_SIZE, true)) {
		FUNC2(pgio);
		return;
	}

	if (pgio->pg_dreq == NULL)
		wb_size = FUNC5(pgio->pg_inode,
					      req->wb_index);
	else
		wb_size = FUNC1(pgio->pg_dreq);

	FUNC4(pgio, req, wb_size);

	if (pgio->pg_lseg &&
		FUNC7(NFS_LSEG_UNAVAILABLE, &pgio->pg_lseg->pls_flags)) {

		FUNC3(pgio->pg_inode, pgio->pg_lseg);
		FUNC6(pgio->pg_lseg);
		FUNC2(pgio);
	}
}