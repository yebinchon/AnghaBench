#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pnfs_layout_segment {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  committed; } ;
struct pnfs_commit_bucket {int /*<<< orphan*/  clseg; int /*<<< orphan*/  wlseg; TYPE_2__ direct_verf; int /*<<< orphan*/  committing; int /*<<< orphan*/  written; } ;
struct nfs_commit_info {TYPE_5__* inode; TYPE_4__* ds; } ;
struct nfs4_filelayout_segment {scalar_t__ stripe_type; TYPE_1__* dsaddr; scalar_t__ commit_through_mds; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_9__ {int /*<<< orphan*/  committed; } ;
struct TYPE_12__ {int /*<<< orphan*/  clseg; int /*<<< orphan*/  wlseg; TYPE_3__ direct_verf; int /*<<< orphan*/  committing; int /*<<< orphan*/  written; } ;
struct TYPE_11__ {int /*<<< orphan*/  i_lock; } ;
struct TYPE_10__ {int nbuckets; TYPE_6__* buckets; } ;
struct TYPE_7__ {int ds_num; int stripe_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfs4_filelayout_segment* FUNC0 (struct pnfs_layout_segment*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_INVALID_STABLE_HOW ; 
 scalar_t__ STRIPE_SPARSE ; 
 struct pnfs_commit_bucket* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_commit_bucket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,struct pnfs_commit_bucket*) ; 

__attribute__((used)) static int
FUNC8(struct pnfs_layout_segment *lseg,
			     struct nfs_commit_info *cinfo,
			     gfp_t gfp_flags)
{
	struct nfs4_filelayout_segment *fl = FUNC0(lseg);
	struct pnfs_commit_bucket *buckets;
	int size, i;

	if (fl->commit_through_mds)
		return 0;

	size = (fl->stripe_type == STRIPE_SPARSE) ?
		fl->dsaddr->ds_num : fl->dsaddr->stripe_count;

	if (cinfo->ds->nbuckets >= size) {
		/* This assumes there is only one IOMODE_RW lseg.  What
		 * we really want to do is have a layout_hdr level
		 * dictionary of <multipath_list4, fh> keys, each
		 * associated with a struct list_head, populated by calls
		 * to filelayout_write_pagelist().
		 * */
		return 0;
	}

	buckets = FUNC2(size, sizeof(struct pnfs_commit_bucket),
			  gfp_flags);
	if (!buckets)
		return -ENOMEM;
	for (i = 0; i < size; i++) {
		FUNC1(&buckets[i].written);
		FUNC1(&buckets[i].committing);
		/* mark direct verifier as unset */
		buckets[i].direct_verf.committed = NFS_INVALID_STABLE_HOW;
	}

	FUNC5(&cinfo->inode->i_lock);
	if (cinfo->ds->nbuckets >= size)
		goto out;
	for (i = 0; i < cinfo->ds->nbuckets; i++) {
		FUNC4(&cinfo->ds->buckets[i].written,
			    &buckets[i].written);
		FUNC4(&cinfo->ds->buckets[i].committing,
			    &buckets[i].committing);
		buckets[i].direct_verf.committed =
			cinfo->ds->buckets[i].direct_verf.committed;
		buckets[i].wlseg = cinfo->ds->buckets[i].wlseg;
		buckets[i].clseg = cinfo->ds->buckets[i].clseg;
	}
	FUNC7(cinfo->ds->buckets, buckets);
	cinfo->ds->nbuckets = size;
out:
	FUNC6(&cinfo->inode->i_lock);
	FUNC3(buckets);
	return 0;
}