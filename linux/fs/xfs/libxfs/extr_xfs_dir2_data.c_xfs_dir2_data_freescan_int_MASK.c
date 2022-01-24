#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  freetag; } ;
typedef  TYPE_1__ xfs_dir2_data_unused_t ;
struct TYPE_7__ {int /*<<< orphan*/  namelen; } ;
typedef  TYPE_2__ xfs_dir2_data_entry_t ;
struct xfs_dir_ops {int /*<<< orphan*/  (* data_entsize ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* data_entry_tag_p ) (TYPE_2__*) ;scalar_t__ (* data_entry_p ) (struct xfs_dir2_data_hdr*) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (struct xfs_dir2_data_hdr*) ;} ;
struct xfs_dir2_data_hdr {scalar_t__ magic; } ;
struct xfs_dir2_data_free {int dummy; } ;
struct xfs_da_geometry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DIR2_BLOCK_MAGIC ; 
 int XFS_DIR2_DATA_FD_COUNT ; 
 int XFS_DIR2_DATA_FREE_TAG ; 
 int /*<<< orphan*/  XFS_DIR2_DATA_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_BLOCK_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR3_DATA_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dir2_data_free*,int /*<<< orphan*/ ,int) ; 
 struct xfs_dir2_data_free* FUNC4 (struct xfs_dir2_data_hdr*) ; 
 scalar_t__ FUNC5 (struct xfs_dir2_data_hdr*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_dir2_data_hdr*,struct xfs_dir2_data_free*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 char* FUNC10 (struct xfs_da_geometry*,struct xfs_dir2_data_hdr*) ; 

void
FUNC11(
	struct xfs_da_geometry	*geo,
	const struct xfs_dir_ops *ops,
	struct xfs_dir2_data_hdr *hdr,
	int			*loghead)
{
	xfs_dir2_data_entry_t	*dep;		/* active data entry */
	xfs_dir2_data_unused_t	*dup;		/* unused data entry */
	struct xfs_dir2_data_free *bf;
	char			*endp;		/* end of block's data */
	char			*p;		/* current entry pointer */

	FUNC0(hdr->magic == FUNC2(XFS_DIR2_DATA_MAGIC) ||
	       hdr->magic == FUNC2(XFS_DIR3_DATA_MAGIC) ||
	       hdr->magic == FUNC2(XFS_DIR2_BLOCK_MAGIC) ||
	       hdr->magic == FUNC2(XFS_DIR3_BLOCK_MAGIC));

	/*
	 * Start by clearing the table.
	 */
	bf = ops->data_bestfree_p(hdr);
	FUNC3(bf, 0, sizeof(*bf) * XFS_DIR2_DATA_FD_COUNT);
	*loghead = 1;
	/*
	 * Set up pointers.
	 */
	p = (char *)ops->data_entry_p(hdr);
	endp = FUNC10(geo, hdr);
	/*
	 * Loop over the block's entries.
	 */
	while (p < endp) {
		dup = (xfs_dir2_data_unused_t *)p;
		/*
		 * If it's a free entry, insert it.
		 */
		if (FUNC1(dup->freetag) == XFS_DIR2_DATA_FREE_TAG) {
			FUNC0((char *)dup - (char *)hdr ==
			       FUNC1(*FUNC9(dup)));
			FUNC8(hdr, bf, dup, loghead);
			p += FUNC1(dup->length);
		}
		/*
		 * For active entries, check their tags and skip them.
		 */
		else {
			dep = (xfs_dir2_data_entry_t *)p;
			FUNC0((char *)dep - (char *)hdr ==
			       FUNC1(*ops->data_entry_tag_p(dep)));
			p += ops->data_entsize(dep->namelen);
		}
	}
}