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
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 scalar_t__ FUNC2 (struct ext4_extent*) ; 
 scalar_t__ FUNC3 (struct ext4_ext_path*) ; 
 int FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_lblk_t FUNC6(struct inode *inode,
					   struct ext4_ext_path *path,
					   ext4_lblk_t *lblk)
{
	int depth = FUNC4(inode);
	struct ext4_extent *ex;
	ext4_lblk_t len;

	ex = path[depth].p_ext;
	if (ex == NULL) {
		/* there is no extent yet, so gap is [0;-] */
		*lblk = 0;
		len = EXT_MAX_BLOCKS;
	} else if (*lblk < FUNC5(ex->ee_block)) {
		len = FUNC5(ex->ee_block) - *lblk;
	} else if (*lblk >= FUNC5(ex->ee_block)
			+ FUNC2(ex)) {
		ext4_lblk_t next;

		*lblk = FUNC5(ex->ee_block) + FUNC2(ex);
		next = FUNC3(path);
		FUNC1(next == *lblk);
		len = next - *lblk;
	} else {
		FUNC0();
	}
	return len;
}