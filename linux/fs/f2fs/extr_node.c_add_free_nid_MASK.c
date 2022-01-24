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
struct nat_entry {int dummy; } ;
struct free_nid {scalar_t__ state; int /*<<< orphan*/  nid; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nid_list_lock; int /*<<< orphan*/  available_nids; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FREE_NID ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  IS_CHECKPOINTED ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ NULL_ADDR ; 
 int __GFP_NOFAIL ; 
 int FUNC1 (struct f2fs_sb_info*,struct free_nid*,scalar_t__) ; 
 struct free_nid* FUNC2 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 
 struct nat_entry* FUNC3 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct free_nid* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  free_nid_slab ; 
 int /*<<< orphan*/  FUNC6 (struct nat_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct free_nid*) ; 
 scalar_t__ FUNC8 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool FUNC15(struct f2fs_sb_info *sbi,
				nid_t nid, bool build, bool update)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	struct free_nid *i, *e;
	struct nat_entry *ne;
	int err = -EINVAL;
	bool ret = false;

	/* 0 nid should not be used */
	if (FUNC13(nid == 0))
		return false;

	if (FUNC13(FUNC4(sbi, nid)))
		return false;

	i = FUNC5(free_nid_slab, GFP_NOFS);
	i->nid = nid;
	i->state = FREE_NID;

	FUNC9(GFP_NOFS | __GFP_NOFAIL);

	FUNC11(&nm_i->nid_list_lock);

	if (build) {
		/*
		 *   Thread A             Thread B
		 *  - f2fs_create
		 *   - f2fs_new_inode
		 *    - f2fs_alloc_nid
		 *     - __insert_nid_to_list(PREALLOC_NID)
		 *                     - f2fs_balance_fs_bg
		 *                      - f2fs_build_free_nids
		 *                       - __f2fs_build_free_nids
		 *                        - scan_nat_page
		 *                         - add_free_nid
		 *                          - __lookup_nat_cache
		 *  - f2fs_add_link
		 *   - f2fs_init_inode_metadata
		 *    - f2fs_new_inode_page
		 *     - f2fs_new_node_page
		 *      - set_node_addr
		 *  - f2fs_alloc_nid_done
		 *   - __remove_nid_from_list(PREALLOC_NID)
		 *                         - __insert_nid_to_list(FREE_NID)
		 */
		ne = FUNC3(nm_i, nid);
		if (ne && (!FUNC6(ne, IS_CHECKPOINTED) ||
				FUNC8(ne) != NULL_ADDR))
			goto err_out;

		e = FUNC2(nm_i, nid);
		if (e) {
			if (e->state == FREE_NID)
				ret = true;
			goto err_out;
		}
	}
	ret = true;
	err = FUNC1(sbi, i, FREE_NID);
err_out:
	if (update) {
		FUNC14(sbi, nid, ret, build);
		if (!build)
			nm_i->available_nids++;
	}
	FUNC12(&nm_i->nid_list_lock);
	FUNC10();

	if (err)
		FUNC7(free_nid_slab, i);
	return ret;
}