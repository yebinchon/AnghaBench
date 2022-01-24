#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_data; } ;
struct TYPE_7__ {int /*<<< orphan*/ * base_ntfs_ino; int /*<<< orphan*/ * extent_ntfs_inos; } ;
struct TYPE_8__ {int nr_extents; int /*<<< orphan*/  count; int /*<<< orphan*/  page; TYPE_1__ ext; } ;
typedef  TYPE_2__ ntfs_inode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct inode *vi)
{
	ntfs_inode *ni = FUNC4(vi);

	FUNC15(&vi->i_data);
	FUNC8(vi);

#ifdef NTFS_RW
	if (NInoDirty(ni)) {
		bool was_bad = (is_bad_inode(vi));

		/* Committing the inode also commits all extent inodes. */
		ntfs_commit_inode(vi);

		if (!was_bad && (is_bad_inode(vi) || NInoDirty(ni))) {
			ntfs_error(vi->i_sb, "Failed to commit dirty inode "
					"0x%lx.  Losing data!", vi->i_ino);
			// FIXME:  Do something!!!
		}
	}
#endif /* NTFS_RW */

	/* No need to lock at this stage as no one else has a reference. */
	if (ni->nr_extents > 0) {
		int i;

		for (i = 0; i < ni->nr_extents; i++)
			FUNC12(ni->ext.extent_ntfs_inos[i]);
		FUNC11(ni->ext.extent_ntfs_inos);
	}

	FUNC6(ni);

	if (FUNC2(ni)) {
		/* Release the base inode if we are holding it. */
		if (ni->nr_extents == -1) {
			FUNC9(FUNC5(ni->ext.base_ntfs_ino));
			ni->nr_extents = 0;
			ni->ext.base_ntfs_ino = NULL;
		}
	}
	FUNC1(ni->page);
	if (!FUNC7(&ni->count))
		FUNC0();
	return;
}