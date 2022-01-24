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
struct TYPE_2__ {int /*<<< orphan*/ * priv_root; int /*<<< orphan*/ * xattr_root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static void FUNC5(struct super_block *s)
{
	if (FUNC0(s)) {
		FUNC3(s);
		/*
		 * Force any pending inode evictions to occur now. Any
		 * inodes to be removed that have extended attributes
		 * associated with them need to clean them up before
		 * we can release the extended attribute root dentries.
		 * shrink_dcache_for_umount will BUG if we don't release
		 * those before it's called so ->put_super is too late.
		 */
		FUNC4(s);

		FUNC1(FUNC0(s)->xattr_root);
		FUNC0(s)->xattr_root = NULL;
		FUNC1(FUNC0(s)->priv_root);
		FUNC0(s)->priv_root = NULL;
	}

	FUNC2(s);
}