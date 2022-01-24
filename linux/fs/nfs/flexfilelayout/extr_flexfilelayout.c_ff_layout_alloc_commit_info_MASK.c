#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pnfs_layout_segment {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  committed; } ;
struct pnfs_commit_bucket {TYPE_2__ direct_verf; int /*<<< orphan*/  committing; int /*<<< orphan*/  written; } ;
struct nfs_commit_info {TYPE_3__* inode; TYPE_1__* ds; } ;
struct nfs4_ff_layout_segment {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_lock; } ;
struct TYPE_4__ {int nbuckets; struct pnfs_commit_bucket* buckets; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfs4_ff_layout_segment* FUNC0 (struct pnfs_layout_segment*) ; 
 int FUNC1 (struct pnfs_layout_segment*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_INVALID_STABLE_HOW ; 
 int FUNC3 (struct nfs4_ff_layout_segment*) ; 
 struct pnfs_commit_bucket* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnfs_commit_bucket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct pnfs_layout_segment *lseg,
			    struct nfs_commit_info *cinfo,
			    gfp_t gfp_flags)
{
	struct nfs4_ff_layout_segment *fls = FUNC0(lseg);
	struct pnfs_commit_bucket *buckets;
	int size;

	if (cinfo->ds->nbuckets != 0) {
		/* This assumes there is only one RW lseg per file.
		 * To support multiple lseg per file, we need to
		 * change struct pnfs_commit_bucket to allow dynamic
		 * increasing nbuckets.
		 */
		return 0;
	}

	size = FUNC3(fls) * FUNC1(lseg);

	buckets = FUNC4(size, sizeof(struct pnfs_commit_bucket),
			  gfp_flags);
	if (!buckets)
		return -ENOMEM;
	else {
		int i;

		FUNC6(&cinfo->inode->i_lock);
		if (cinfo->ds->nbuckets != 0)
			FUNC5(buckets);
		else {
			cinfo->ds->buckets = buckets;
			cinfo->ds->nbuckets = size;
			for (i = 0; i < size; i++) {
				FUNC2(&buckets[i].written);
				FUNC2(&buckets[i].committing);
				/* mark direct verifier as unset */
				buckets[i].direct_verf.committed =
					NFS_INVALID_STABLE_HOW;
			}
		}
		FUNC7(&cinfo->inode->i_lock);
		return 0;
	}
}