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
struct nilfs_inode_info {scalar_t__ i_root; int /*<<< orphan*/  i_btnode_cache; int /*<<< orphan*/  i_bmap; int /*<<< orphan*/  i_state; int /*<<< orphan*/ * i_bh; int /*<<< orphan*/  i_dirty; } ;
struct inode {scalar_t__ i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nilfs_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BMAP ; 
 scalar_t__ NILFS_ROOT_INO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct inode *inode)
{
	struct nilfs_inode_info *ii = FUNC1(inode);

	/*
	 * Free resources allocated in nilfs_read_inode(), here.
	 */
	FUNC0(!FUNC3(&ii->i_dirty));
	FUNC2(ii->i_bh);
	ii->i_bh = NULL;

	if (FUNC6(inode))
		FUNC7(inode);

	if (FUNC9(NILFS_I_BMAP, &ii->i_state))
		FUNC4(ii->i_bmap);

	FUNC5(&ii->i_btnode_cache);

	if (ii->i_root && inode->i_ino == NILFS_ROOT_INO)
		FUNC8(ii->i_root);
}