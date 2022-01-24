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
struct ext4_ext_path {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct ext4_ext_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_fsblk_t
FUNC3(handle_t *handle, struct inode *inode,
			struct ext4_ext_path *path,
			struct ext4_extent *ex, int *err, unsigned int flags)
{
	ext4_fsblk_t goal, newblock;

	goal = FUNC0(inode, path, FUNC2(ex->ee_block));
	newblock = FUNC1(handle, inode, goal, flags,
					NULL, err);
	return newblock;
}