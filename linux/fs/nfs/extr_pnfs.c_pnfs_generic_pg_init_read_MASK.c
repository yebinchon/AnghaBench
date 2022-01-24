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
typedef  scalar_t__ u64 ;
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_error; int /*<<< orphan*/  pg_inode; int /*<<< orphan*/ * pg_dreq; } ;
struct nfs_page {scalar_t__ wb_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOMODE_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct nfs_page*) ; 

void
FUNC10(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
	u64 rd_size = req->wb_bytes;

	FUNC6(pgio);
	FUNC7(pgio, req);
	if (pgio->pg_lseg == NULL) {
		if (pgio->pg_dreq == NULL)
			rd_size = FUNC2(pgio->pg_inode) - FUNC9(req);
		else
			rd_size = FUNC3(pgio->pg_dreq);

		pgio->pg_lseg = FUNC8(pgio->pg_inode,
						   FUNC5(req),
						   FUNC9(req),
						   rd_size,
						   IOMODE_READ,
						   false,
						   GFP_KERNEL);
		if (FUNC0(pgio->pg_lseg)) {
			pgio->pg_error = FUNC1(pgio->pg_lseg);
			pgio->pg_lseg = NULL;
			return;
		}
	}
	/* If no lseg, fall back to read through mds */
	if (pgio->pg_lseg == NULL)
		FUNC4(pgio);

}