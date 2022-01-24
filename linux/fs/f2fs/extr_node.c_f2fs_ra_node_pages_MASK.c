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
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  NIDS_PER_BLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct page *parent, int start, int n)
{
	struct f2fs_sb_info *sbi = FUNC0(parent);
	struct blk_plug plug;
	int i, end;
	nid_t nid;

	FUNC2(&plug);

	/* Then, try readahead for siblings of the desired node */
	end = start + n;
	end = FUNC5(end, NIDS_PER_BLOCK);
	for (i = start; i < end; i++) {
		nid = FUNC4(parent, i, false);
		FUNC3(sbi, nid);
	}

	FUNC1(&plug);
}