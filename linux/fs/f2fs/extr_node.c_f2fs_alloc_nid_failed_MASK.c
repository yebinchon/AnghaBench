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
struct free_nid {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nid_list_lock; int /*<<< orphan*/  available_nids; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_NID ; 
 int /*<<< orphan*/  FREE_NIDS ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PREALLOC_NID ; 
 struct free_nid* FUNC1 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct free_nid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,struct free_nid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  free_nid_slab ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct free_nid*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int) ; 

void FUNC10(struct f2fs_sb_info *sbi, nid_t nid)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	struct free_nid *i;
	bool need_free = false;

	if (!nid)
		return;

	FUNC7(&nm_i->nid_list_lock);
	i = FUNC1(nm_i, nid);
	FUNC5(sbi, !i);

	if (!FUNC4(sbi, FREE_NIDS)) {
		FUNC3(sbi, i, PREALLOC_NID);
		need_free = true;
	} else {
		FUNC2(sbi, i, PREALLOC_NID, FREE_NID);
	}

	nm_i->available_nids++;

	FUNC9(sbi, nid, true, false);

	FUNC8(&nm_i->nid_list_lock);

	if (need_free)
		FUNC6(free_nid_slab, i);
}