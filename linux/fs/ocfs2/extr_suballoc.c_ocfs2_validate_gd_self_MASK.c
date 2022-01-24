#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ocfs2_group_desc {int bg_signature; int /*<<< orphan*/  bg_size; int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_generation; int /*<<< orphan*/  bg_blkno; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  fs_generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_group_desc*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,int,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb,
				  struct buffer_head *bh,
				  int resize)
{
	struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *)bh->b_data;

	if (!FUNC0(gd)) {
		FUNC2("Group descriptor #%llu has bad signature %.*s\n",
			 (unsigned long long)bh->b_blocknr, 7,
			 gd->bg_signature);
	}

	if (FUNC5(gd->bg_blkno) != bh->b_blocknr) {
		FUNC2("Group descriptor #%llu has an invalid bg_blkno of %llu\n",
			 (unsigned long long)bh->b_blocknr,
			 (unsigned long long)FUNC5(gd->bg_blkno));
	}

	if (FUNC4(gd->bg_generation) != FUNC1(sb)->fs_generation) {
		FUNC2("Group descriptor #%llu has an invalid fs_generation of #%u\n",
			 (unsigned long long)bh->b_blocknr,
			 FUNC4(gd->bg_generation));
	}

	if (FUNC3(gd->bg_free_bits_count) > FUNC3(gd->bg_bits)) {
		FUNC2("Group descriptor #%llu has bit count %u but claims that %u are free\n",
			 (unsigned long long)bh->b_blocknr,
			 FUNC3(gd->bg_bits),
			 FUNC3(gd->bg_free_bits_count));
	}

	if (FUNC3(gd->bg_bits) > (8 * FUNC3(gd->bg_size))) {
		FUNC2("Group descriptor #%llu has bit count %u but max bitmap bits of %u\n",
			 (unsigned long long)bh->b_blocknr,
			 FUNC3(gd->bg_bits),
			 8 * FUNC3(gd->bg_size));
	}

	return 0;
}