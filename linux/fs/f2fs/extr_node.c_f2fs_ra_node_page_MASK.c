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
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_3__ {int /*<<< orphan*/  i_pages; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  REQ_RAHEAD ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct f2fs_sb_info *sbi, nid_t nid)
{
	struct page *apage;
	int err;

	if (!nid)
		return;
	if (FUNC1(sbi, nid))
		return;

	apage = FUNC5(&FUNC0(sbi)->i_pages, nid);
	if (apage)
		return;

	apage = FUNC2(FUNC0(sbi), nid, false);
	if (!apage)
		return;

	err = FUNC4(apage, REQ_RAHEAD);
	FUNC3(apage, err ? 1 : 0);
}