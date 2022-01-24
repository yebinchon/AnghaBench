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
struct msdos_inode_info {int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  i_dir_hash; int /*<<< orphan*/  i_fat_hash; int /*<<< orphan*/  cache_lru; scalar_t__ cache_valid_id; scalar_t__ nr_caches; int /*<<< orphan*/  cache_lru_lock; } ;

/* Variables and functions */
 scalar_t__ FAT_CACHE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *foo)
{
	struct msdos_inode_info *ei = (struct msdos_inode_info *)foo;

	FUNC3(&ei->cache_lru_lock);
	ei->nr_caches = 0;
	ei->cache_valid_id = FAT_CACHE_VALID + 1;
	FUNC1(&ei->cache_lru);
	FUNC0(&ei->i_fat_hash);
	FUNC0(&ei->i_dir_hash);
	FUNC2(&ei->vfs_inode);
}