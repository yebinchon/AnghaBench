#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_idx {int /*<<< orphan*/  ei_block; } ;
struct ext4_ext_path {TYPE_1__* p_hdr; struct ext4_extent_idx* p_idx; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_3__ {int /*<<< orphan*/  eh_entries; int /*<<< orphan*/  eh_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*,...) ; 
 struct ext4_extent_idx* FUNC2 (TYPE_1__*) ; 
 struct ext4_extent_idx* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_extent_idx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_extent_idx*,struct ext4_extent_idx*,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(handle_t *handle, struct inode *inode,
				 struct ext4_ext_path *curp,
				 int logical, ext4_fsblk_t ptr)
{
	struct ext4_extent_idx *ix;
	int len, err;

	err = FUNC6(handle, inode, curp);
	if (err)
		return err;

	if (FUNC14(logical == FUNC12(curp->p_idx->ei_block))) {
		FUNC1(inode,
				 "logical %d == ei_block %d!",
				 logical, FUNC12(curp->p_idx->ei_block));
		return -EFSCORRUPTED;
	}

	if (FUNC14(FUNC11(curp->p_hdr->eh_entries)
			     >= FUNC11(curp->p_hdr->eh_max))) {
		FUNC1(inode,
				 "eh_entries %d >= eh_max %d!",
				 FUNC11(curp->p_hdr->eh_entries),
				 FUNC11(curp->p_hdr->eh_max));
		return -EFSCORRUPTED;
	}

	if (logical > FUNC12(curp->p_idx->ei_block)) {
		/* insert after */
		FUNC9("insert new index %d after: %llu\n", logical, ptr);
		ix = curp->p_idx + 1;
	} else {
		/* insert before */
		FUNC9("insert new index %d before: %llu\n", logical, ptr);
		ix = curp->p_idx;
	}

	len = FUNC2(curp->p_hdr) - ix + 1;
	FUNC0(len < 0);
	if (len > 0) {
		FUNC9("insert new index %d: "
				"move %d indices from 0x%p to 0x%p\n",
				logical, len, ix, ix + 1);
		FUNC13(ix + 1, ix, len * sizeof(struct ext4_extent_idx));
	}

	if (FUNC14(ix > FUNC3(curp->p_hdr))) {
		FUNC1(inode, "ix > EXT_MAX_INDEX!");
		return -EFSCORRUPTED;
	}

	ix->ei_block = FUNC4(logical);
	FUNC7(ix, ptr);
	FUNC10(&curp->p_hdr->eh_entries, 1);

	if (FUNC14(ix > FUNC2(curp->p_hdr))) {
		FUNC1(inode, "ix > EXT_LAST_INDEX!");
		return -EFSCORRUPTED;
	}

	err = FUNC5(handle, inode, curp);
	FUNC8(inode->i_sb, err);

	return err;
}