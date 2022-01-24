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
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_dreq; int /*<<< orphan*/  pg_inode; int /*<<< orphan*/  pg_error; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IOMODE_RW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_commit_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct nfs_pageio_descriptor *pgio,
			 struct nfs_page *req)
{
	struct nfs_commit_info cinfo;
	int status;

	FUNC7(pgio);
	if (!pgio->pg_lseg) {
		pgio->pg_lseg = FUNC3(pgio->pg_inode,
						      FUNC6(req),
						      0,
						      NFS4_MAX_UINT64,
						      IOMODE_RW,
						      false,
						      GFP_NOFS);
		if (FUNC0(pgio->pg_lseg)) {
			pgio->pg_error = FUNC1(pgio->pg_lseg);
			pgio->pg_lseg = NULL;
			return;
		}
	}

	/* If no lseg, fall back to write through mds */
	if (pgio->pg_lseg == NULL)
		goto out_mds;
	FUNC4(&cinfo, pgio->pg_inode, pgio->pg_dreq);
	status = FUNC2(pgio->pg_lseg, &cinfo, GFP_NOFS);
	if (status < 0) {
		FUNC8(pgio->pg_lseg);
		pgio->pg_lseg = NULL;
		goto out_mds;
	}
	return;
out_mds:
	FUNC5(pgio);
}