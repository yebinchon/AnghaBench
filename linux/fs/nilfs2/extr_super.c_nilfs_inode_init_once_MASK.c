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
struct nilfs_inode_info {int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  i_bmap_data; int /*<<< orphan*/ * i_bmap; int /*<<< orphan*/  i_btnode_cache; int /*<<< orphan*/  xattr_sem; int /*<<< orphan*/  i_dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *obj)
{
	struct nilfs_inode_info *ii = obj;

	FUNC0(&ii->i_dirty);
#ifdef CONFIG_NILFS_XATTR
	init_rwsem(&ii->xattr_sem);
#endif
	FUNC1(&ii->i_btnode_cache);
	ii->i_bmap = &ii->i_bmap_data;
	FUNC3(&ii->vfs_inode);
}