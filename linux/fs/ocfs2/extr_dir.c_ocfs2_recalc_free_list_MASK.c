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
struct ocfs2_dir_lookup_result {int /*<<< orphan*/  dl_leaf_bh; } ;
struct ocfs2_dir_block_trailer {int /*<<< orphan*/  db_free_rec_len; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_dir_lookup_result*) ; 
 struct ocfs2_dir_block_trailer* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inode *dir, handle_t *handle,
				   struct ocfs2_dir_lookup_result *lookup)
{
	int max_rec_len;
	struct ocfs2_dir_block_trailer *trailer;

	/* Walk dl_leaf_bh to figure out what the new free rec_len is. */
	max_rec_len = FUNC1(dir->i_sb, lookup->dl_leaf_bh);
	if (max_rec_len) {
		/*
		 * There's still room in this block, so no need to remove it
		 * from the free list. In this case, we just want to update
		 * the rec len accounting.
		 */
		trailer = FUNC4(lookup->dl_leaf_bh, dir->i_sb);
		trailer->db_free_rec_len = FUNC0(max_rec_len);
		FUNC2(handle, lookup->dl_leaf_bh);
	} else {
		FUNC3(dir, handle, lookup);
	}
}