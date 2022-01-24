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
struct free_nid {int state; int /*<<< orphan*/  nid; int /*<<< orphan*/  list; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  free_nid_root; int /*<<< orphan*/ * nid_cnt; } ;
typedef  enum nid_state { ____Placeholder_nid_state } nid_state ;

/* Variables and functions */
 int FREE_NID ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct f2fs_sb_info *sbi,
			struct free_nid *i, enum nid_state state)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);

	FUNC1(sbi, state != i->state);
	nm_i->nid_cnt[state]--;
	if (state == FREE_NID)
		FUNC2(&i->list);
	FUNC3(&nm_i->free_nid_root, i->nid);
}