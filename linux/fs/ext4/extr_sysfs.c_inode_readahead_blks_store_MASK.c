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
struct ext4_sb_info {unsigned long s_inode_readahead_blks; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static ssize_t FUNC3(struct ext4_sb_info *sbi,
					  const char *buf, size_t count)
{
	unsigned long t;
	int ret;

	ret = FUNC1(FUNC2(buf), 0, &t);
	if (ret)
		return ret;

	if (t && (!FUNC0(t) || t > 0x40000000))
		return -EINVAL;

	sbi->s_inode_readahead_blks = t;
	return count;
}