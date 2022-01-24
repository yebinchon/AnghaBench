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
struct inode {int dummy; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_extent {void* ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {TYPE_1__* p_ext; } ;
typedef  scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  ee_block; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext4_sb_info*,scalar_t__) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 void* FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (struct ext4_extent*) ; 
 scalar_t__ FUNC3 (struct ext4_ext_path*) ; 
 unsigned int FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(struct ext4_sb_info *sbi,
					   struct inode *inode,
					   struct ext4_extent *newext,
					   struct ext4_ext_path *path)
{
	ext4_lblk_t b1, b2;
	unsigned int depth, len1;
	unsigned int ret = 0;

	b1 = FUNC5(newext->ee_block);
	len1 = FUNC2(newext);
	depth = FUNC4(inode);
	if (!path[depth].p_ext)
		goto out;
	b2 = FUNC0(sbi, FUNC5(path[depth].p_ext->ee_block));

	/*
	 * get the next allocated block if the extent in the path
	 * is before the requested block(s)
	 */
	if (b2 < b1) {
		b2 = FUNC3(path);
		if (b2 == EXT_MAX_BLOCKS)
			goto out;
		b2 = FUNC0(sbi, b2);
	}

	/* check for wrap through zero on extent logical start block*/
	if (b1 + len1 < b1) {
		len1 = EXT_MAX_BLOCKS - b1;
		newext->ee_len = FUNC1(len1);
		ret = 1;
	}

	/* check for overlap */
	if (b1 + len1 > b2) {
		newext->ee_len = FUNC1(b2 - b1);
		ret = 1;
	}
out:
	return ret;
}