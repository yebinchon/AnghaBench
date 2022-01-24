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
typedef  int /*<<< orphan*/  time64_t ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  __fs32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline __fs32 FUNC3(struct super_block *sbp)
{
	time64_t now = FUNC1();

	/* Signed 32-bit interpretation wraps around in 2038, which
	 * happens in ufs1 inode stamps but not ufs2 using 64-bits
	 * stamps. For superblock and blockgroup, let's assume
	 * unsigned 32-bit stamps, which are good until y2106.
	 * Wrap around rather than clamp here to make the dirty
	 * file system detection work in the superblock stamp.
	 */
	return FUNC0(sbp, FUNC2(now));
}