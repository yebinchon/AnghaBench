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
typedef  int /*<<< orphan*/  u64 ;
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_error; int /*<<< orphan*/  pg_inode; } ;
struct nfs_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOMODE_RW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_page*) ; 

void
FUNC8(struct nfs_pageio_descriptor *pgio,
			   struct nfs_page *req, u64 wb_size)
{
	FUNC4(pgio);
	FUNC5(pgio, req);
	if (pgio->pg_lseg == NULL) {
		pgio->pg_lseg = FUNC6(pgio->pg_inode,
						   FUNC3(req),
						   FUNC7(req),
						   wb_size,
						   IOMODE_RW,
						   false,
						   GFP_KERNEL);
		if (FUNC0(pgio->pg_lseg)) {
			pgio->pg_error = FUNC1(pgio->pg_lseg);
			pgio->pg_lseg = NULL;
			return;
		}
	}
	/* If no lseg, fall back to write through mds */
	if (pgio->pg_lseg == NULL)
		FUNC2(pgio);
}