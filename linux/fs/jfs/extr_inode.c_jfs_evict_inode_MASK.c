#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct jfs_inode_info {scalar_t__ fileset; int active_ag; int /*<<< orphan*/  ag_lock; int /*<<< orphan*/  anon_inode_list; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_nlink; } ;
struct bmap {int /*<<< orphan*/ * db_active; } ;
struct TYPE_2__ {struct bmap* bmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMMIT_Freewmap ; 
 scalar_t__ FILESYSTEM_I ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(struct inode *inode)
{
	struct jfs_inode_info *ji = FUNC1(inode);

	FUNC11("In jfs_evict_inode, inode = 0x%p", inode);

	if (!inode->i_nlink && !FUNC9(inode)) {
		FUNC8(inode);

		if (FUNC1(inode)->fileset == FILESYSTEM_I) {
			FUNC16(&inode->i_data);

			if (FUNC15(COMMIT_Freewmap, inode))
				FUNC10(inode);

			FUNC5(inode);

			/*
			 * Free the inode from the quota allocation.
			 */
			FUNC7(inode);
		}
	} else {
		FUNC16(&inode->i_data);
	}
	FUNC4(inode);
	FUNC6(inode);

	FUNC0(!FUNC12(&ji->anon_inode_list));

	FUNC13(&ji->ag_lock);
	if (ji->active_ag != -1) {
		struct bmap *bmap = FUNC2(inode->i_sb)->bmap;
		FUNC3(&bmap->db_active[ji->active_ag]);
		ji->active_ag = -1;
	}
	FUNC14(&ji->ag_lock);
}