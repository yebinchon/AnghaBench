#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs_pgio_mirror {int /*<<< orphan*/  pg_bsize; } ;
struct nfs_pageio_descriptor {int pg_mirror_count; scalar_t__ pg_maxretrans; int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_inode; struct nfs_pgio_mirror* pg_mirrors; int /*<<< orphan*/  pg_dreq; int /*<<< orphan*/  pg_error; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;
struct nfs4_pnfs_ds {int dummy; } ;
struct nfs4_ff_layout_mirror {TYPE_2__* mirror_ds; } ;
struct TYPE_8__ {int /*<<< orphan*/  layout; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_1__* ds_versions; } ;
struct TYPE_5__ {int /*<<< orphan*/  wsize; } ;

/* Variables and functions */
 struct nfs4_ff_layout_mirror* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IOMODE_RW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int NFS_MOUNT_SOFT ; 
 int NFS_MOUNT_SOFTERR ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ io_maxretrans ; 
 struct nfs4_pnfs_ds* FUNC9 (int /*<<< orphan*/ *,struct nfs4_ff_layout_mirror*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nfs_commit_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct nfs_pageio_descriptor *pgio,
			struct nfs_page *req)
{
	struct nfs4_ff_layout_mirror *mirror;
	struct nfs_pgio_mirror *pgm;
	struct nfs_commit_info cinfo;
	struct nfs4_pnfs_ds *ds;
	int i;
	int status;

retry:
	FUNC13(pgio);
	if (!pgio->pg_lseg) {
		pgio->pg_lseg = FUNC15(pgio->pg_inode,
						   FUNC12(req),
						   0,
						   NFS4_MAX_UINT64,
						   IOMODE_RW,
						   false,
						   GFP_NOFS);
		if (FUNC2(pgio->pg_lseg)) {
			pgio->pg_error = FUNC5(pgio->pg_lseg);
			pgio->pg_lseg = NULL;
			return;
		}
	}
	/* If no lseg, fall back to write through mds */
	if (pgio->pg_lseg == NULL)
		goto out_mds;

	FUNC10(&cinfo, pgio->pg_inode, pgio->pg_dreq);
	status = FUNC7(pgio->pg_lseg, &cinfo, GFP_NOFS);
	if (status < 0)
		goto out_mds;

	/* Use a direct mapping of ds_idx to pgio mirror_idx */
	if (FUNC6(pgio->pg_mirror_count !=
	    FUNC1(pgio->pg_lseg)))
		goto out_mds;

	for (i = 0; i < pgio->pg_mirror_count; i++) {
		mirror = FUNC0(pgio->pg_lseg, i);
		ds = FUNC9(pgio->pg_lseg, mirror, true);
		if (!ds) {
			if (!FUNC8(pgio->pg_lseg))
				goto out_mds;
			FUNC14(pgio->pg_lseg);
			pgio->pg_lseg = NULL;
			/* Sleep for 1 second before retrying */
			FUNC16(1);
			goto retry;
		}
		pgm = &pgio->pg_mirrors[i];
		pgm->pg_bsize = mirror->mirror_ds->ds_versions[0].wsize;
	}

	if (FUNC4(pgio->pg_inode)->flags &
			(NFS_MOUNT_SOFT|NFS_MOUNT_SOFTERR))
		pgio->pg_maxretrans = io_maxretrans;
	return;

out_mds:
	FUNC17(pgio->pg_inode,
			0, NFS4_MAX_UINT64, IOMODE_RW,
			FUNC3(pgio->pg_inode)->layout,
			pgio->pg_lseg);
	FUNC14(pgio->pg_lseg);
	pgio->pg_lseg = NULL;
	pgio->pg_maxretrans = 0;
	FUNC11(pgio);
}