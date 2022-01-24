#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ freetag; scalar_t__ length; } ;
typedef  TYPE_3__ xfs_dir2_data_unused_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_hdr_t ;
struct xfs_dir2_data_free {scalar_t__ length; } ;
typedef  struct xfs_dir2_data_free xfs_dir2_data_free_t ;
typedef  scalar_t__ xfs_dir2_data_aoff_t ;
struct xfs_da_args {TYPE_2__* dp; int /*<<< orphan*/  geo; } ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_9__ {TYPE_1__* d_ops; } ;
struct TYPE_8__ {scalar_t__ data_entry_offset; struct xfs_dir2_data_free* (* data_bestfree_p ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_DIR2_DATA_FREE_TAG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 void* FUNC3 (int) ; 
 struct xfs_dir2_data_free* FUNC4 (int /*<<< orphan*/ *) ; 
 struct xfs_dir2_data_free* FUNC5 (int /*<<< orphan*/ *,struct xfs_dir2_data_free*,TYPE_3__*) ; 
 struct xfs_dir2_data_free* FUNC6 (int /*<<< orphan*/ *,struct xfs_dir2_data_free*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct xfs_dir2_data_free*,struct xfs_dir2_data_free*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_da_args*,struct xfs_buf*,TYPE_3__*) ; 
 void** FUNC9 (TYPE_3__*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC11(
	struct xfs_da_args	*args,
	struct xfs_buf		*bp,
	xfs_dir2_data_aoff_t	offset,		/* starting byte offset */
	xfs_dir2_data_aoff_t	len,		/* length in bytes */
	int			*needlogp,	/* out: log header */
	int			*needscanp)	/* out: regen bestfree */
{
	xfs_dir2_data_hdr_t	*hdr;		/* data block pointer */
	xfs_dir2_data_free_t	*dfp;		/* bestfree pointer */
	char			*endptr;	/* end of data area */
	int			needscan;	/* need to regen bestfree */
	xfs_dir2_data_unused_t	*newdup;	/* new unused entry */
	xfs_dir2_data_unused_t	*postdup;	/* unused entry after us */
	xfs_dir2_data_unused_t	*prevdup;	/* unused entry before us */
	struct xfs_dir2_data_free *bf;

	hdr = bp->b_addr;

	/*
	 * Figure out where the end of the data area is.
	 */
	endptr = FUNC10(args->geo, hdr);
	FUNC0(endptr != NULL);

	/*
	 * If this isn't the start of the block, then back up to
	 * the previous entry and see if it's free.
	 */
	if (offset > args->dp->d_ops->data_entry_offset) {
		__be16			*tagp;	/* tag just before us */

		tagp = (__be16 *)((char *)hdr + offset) - 1;
		prevdup = (xfs_dir2_data_unused_t *)((char *)hdr + FUNC2(*tagp));
		if (FUNC2(prevdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
			prevdup = NULL;
	} else
		prevdup = NULL;
	/*
	 * If this isn't the end of the block, see if the entry after
	 * us is free.
	 */
	if ((char *)hdr + offset + len < endptr) {
		postdup =
			(xfs_dir2_data_unused_t *)((char *)hdr + offset + len);
		if (FUNC2(postdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
			postdup = NULL;
	} else
		postdup = NULL;
	FUNC0(*needscanp == 0);
	needscan = 0;
	/*
	 * Previous and following entries are both free,
	 * merge everything into a single free entry.
	 */
	bf = args->dp->d_ops->data_bestfree_p(hdr);
	if (prevdup && postdup) {
		xfs_dir2_data_free_t	*dfp2;	/* another bestfree pointer */

		/*
		 * See if prevdup and/or postdup are in bestfree table.
		 */
		dfp = FUNC5(hdr, bf, prevdup);
		dfp2 = FUNC5(hdr, bf, postdup);
		/*
		 * We need a rescan unless there are exactly 2 free entries
		 * namely our two.  Then we know what's happening, otherwise
		 * since the third bestfree is there, there might be more
		 * entries.
		 */
		needscan = (bf[2].length != 0);
		/*
		 * Fix up the new big freespace.
		 */
		FUNC1(&prevdup->length, len + FUNC2(postdup->length));
		*FUNC9(prevdup) =
			FUNC3((char *)prevdup - (char *)hdr);
		FUNC8(args, bp, prevdup);
		if (!needscan) {
			/*
			 * Has to be the case that entries 0 and 1 are
			 * dfp and dfp2 (don't know which is which), and
			 * entry 2 is empty.
			 * Remove entry 1 first then entry 0.
			 */
			FUNC0(dfp && dfp2);
			if (dfp == &bf[1]) {
				dfp = &bf[0];
				FUNC0(dfp2 == dfp);
				dfp2 = &bf[1];
			}
			FUNC7(hdr, bf, dfp2, needlogp);
			FUNC7(hdr, bf, dfp, needlogp);
			/*
			 * Now insert the new entry.
			 */
			dfp = FUNC6(hdr, bf, prevdup,
						       needlogp);
			FUNC0(dfp == &bf[0]);
			FUNC0(dfp->length == prevdup->length);
			FUNC0(!dfp[1].length);
			FUNC0(!dfp[2].length);
		}
	}
	/*
	 * The entry before us is free, merge with it.
	 */
	else if (prevdup) {
		dfp = FUNC5(hdr, bf, prevdup);
		FUNC1(&prevdup->length, len);
		*FUNC9(prevdup) =
			FUNC3((char *)prevdup - (char *)hdr);
		FUNC8(args, bp, prevdup);
		/*
		 * If the previous entry was in the table, the new entry
		 * is longer, so it will be in the table too.  Remove
		 * the old one and add the new one.
		 */
		if (dfp) {
			FUNC7(hdr, bf, dfp, needlogp);
			FUNC6(hdr, bf, prevdup, needlogp);
		}
		/*
		 * Otherwise we need a scan if the new entry is big enough.
		 */
		else {
			needscan = FUNC2(prevdup->length) >
				   FUNC2(bf[2].length);
		}
	}
	/*
	 * The following entry is free, merge with it.
	 */
	else if (postdup) {
		dfp = FUNC5(hdr, bf, postdup);
		newdup = (xfs_dir2_data_unused_t *)((char *)hdr + offset);
		newdup->freetag = FUNC3(XFS_DIR2_DATA_FREE_TAG);
		newdup->length = FUNC3(len + FUNC2(postdup->length));
		*FUNC9(newdup) =
			FUNC3((char *)newdup - (char *)hdr);
		FUNC8(args, bp, newdup);
		/*
		 * If the following entry was in the table, the new entry
		 * is longer, so it will be in the table too.  Remove
		 * the old one and add the new one.
		 */
		if (dfp) {
			FUNC7(hdr, bf, dfp, needlogp);
			FUNC6(hdr, bf, newdup, needlogp);
		}
		/*
		 * Otherwise we need a scan if the new entry is big enough.
		 */
		else {
			needscan = FUNC2(newdup->length) >
				   FUNC2(bf[2].length);
		}
	}
	/*
	 * Neither neighbor is free.  Make a new entry.
	 */
	else {
		newdup = (xfs_dir2_data_unused_t *)((char *)hdr + offset);
		newdup->freetag = FUNC3(XFS_DIR2_DATA_FREE_TAG);
		newdup->length = FUNC3(len);
		*FUNC9(newdup) =
			FUNC3((char *)newdup - (char *)hdr);
		FUNC8(args, bp, newdup);
		FUNC6(hdr, bf, newdup, needlogp);
	}
	*needscanp = needscan;
}