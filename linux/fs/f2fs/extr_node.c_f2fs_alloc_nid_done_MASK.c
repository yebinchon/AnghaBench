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
struct f2fs_nm_info {int /*<<< orphan*/  nid_list_lock; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  PREALLOC_NID ; 
 struct free_nid* FUNC1 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct free_nid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  free_nid_slab ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct free_nid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct f2fs_sb_info *sbi, nid_t nid)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	struct free_nid *i;

	FUNC5(&nm_i->nid_list_lock);
	i = FUNC1(nm_i, nid);
	FUNC3(sbi, !i);
	FUNC2(sbi, i, PREALLOC_NID);
	FUNC6(&nm_i->nid_list_lock);

	FUNC4(free_nid_slab, i);
}