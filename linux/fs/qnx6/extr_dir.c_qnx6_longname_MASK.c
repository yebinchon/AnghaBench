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
typedef  int u32 ;
struct super_block {int s_blocksize_bits; } ;
struct qnx6_sb_info {TYPE_1__* longfile; } ;
struct qnx6_long_filename {int dummy; } ;
struct qnx6_long_dir_entry {int /*<<< orphan*/  de_long_inode; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 struct qnx6_long_filename* FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 struct qnx6_sb_info* FUNC2 (struct super_block*) ; 
 int FUNC3 (struct qnx6_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct address_space*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct qnx6_long_filename *FUNC7(struct super_block *sb,
					 struct qnx6_long_dir_entry *de,
					 struct page **p)
{
	struct qnx6_sb_info *sbi = FUNC2(sb);
	u32 s = FUNC3(sbi, de->de_long_inode); /* in block units */
	u32 n = s >> (PAGE_SHIFT - sb->s_blocksize_bits); /* in pages */
	/* within page */
	u32 offs = (s << sb->s_blocksize_bits) & ~PAGE_MASK;
	struct address_space *mapping = sbi->longfile->i_mapping;
	struct page *page = FUNC6(mapping, n, NULL);
	if (FUNC1(page))
		return FUNC0(page);
	FUNC4(*p = page);
	return (struct qnx6_long_filename *)(FUNC5(page) + offs);
}