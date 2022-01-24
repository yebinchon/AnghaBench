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
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct super_block* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct super_block* pinned_root ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct super_block *mnt_sb)
{
	/*
	 * When unmounting the filesystem we were using for load
	 * pinning, we acknowledge the superblock release, but make sure
	 * no other modules or firmware can be loaded.
	 */
	if (!FUNC1(pinned_root) && mnt_sb == pinned_root) {
		pinned_root = FUNC0(-EIO);
		FUNC2("umount pinned fs: refusing further loads\n");
	}
}