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
struct free_nid {int state; int /*<<< orphan*/  list; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  free_nid_list; int /*<<< orphan*/ * nid_cnt; } ;
typedef  enum nid_state { ____Placeholder_nid_state } nid_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  FREE_NID 129 
 struct f2fs_nm_info* FUNC1 (struct f2fs_sb_info*) ; 
#define  PREALLOC_NID 128 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct f2fs_sb_info *sbi, struct free_nid *i,
			enum nid_state org_state, enum nid_state dst_state)
{
	struct f2fs_nm_info *nm_i = FUNC1(sbi);

	FUNC2(sbi, org_state != i->state);
	i->state = dst_state;
	nm_i->nid_cnt[org_state]--;
	nm_i->nid_cnt[dst_state]++;

	switch (dst_state) {
	case PREALLOC_NID:
		FUNC4(&i->list);
		break;
	case FREE_NID:
		FUNC3(&i->list, &nm_i->free_nid_list);
		break;
	default:
		FUNC0(1);
	}
}