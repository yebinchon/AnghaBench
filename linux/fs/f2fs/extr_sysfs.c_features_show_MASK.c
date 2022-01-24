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
struct super_block {TYPE_1__* s_bdev; } ;
struct f2fs_sb_info {struct super_block* sb; } ;
struct f2fs_attr {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_part; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC7 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC9 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC10 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC11 (struct f2fs_sb_info*) ; 
 int FUNC12 (char*,scalar_t__,char*,...) ; 

__attribute__((used)) static ssize_t FUNC13(struct f2fs_attr *a,
		struct f2fs_sb_info *sbi, char *buf)
{
	struct super_block *sb = sbi->sb;
	int len = 0;

	if (!sb->s_bdev->bd_part)
		return FUNC12(buf, PAGE_SIZE, "0\n");

	if (FUNC2(sbi))
		len += FUNC12(buf, PAGE_SIZE - len, "%s",
						"encryption");
	if (FUNC0(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "blkzoned");
	if (FUNC3(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "extra_attr");
	if (FUNC8(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "projquota");
	if (FUNC5(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "inode_checksum");
	if (FUNC4(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "flexible_inline_xattr");
	if (FUNC9(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "quota_ino");
	if (FUNC6(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "inode_crtime");
	if (FUNC7(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "lost_found");
	if (FUNC11(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "verity");
	if (FUNC10(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "sb_checksum");
	if (FUNC1(sbi))
		len += FUNC12(buf + len, PAGE_SIZE - len, "%s%s",
				len ? ", " : "", "casefold");
	len += FUNC12(buf + len, PAGE_SIZE - len, "\n");
	return len;
}