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
struct the_nilfs {int /*<<< orphan*/  ns_inode_lock; int /*<<< orphan*/  ns_dirty_files; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  sc_root; TYPE_1__* sc_super; } ;
struct TYPE_2__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SC_DIRTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nilfs_sc_info*) ; 
 scalar_t__ FUNC2 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nilfs_sc_info *sci)
{
	struct the_nilfs *nilfs = sci->sc_super->s_fs_info;
	int ret = 0;

	if (FUNC2(nilfs, sci->sc_root))
		FUNC3(NILFS_SC_DIRTY, &sci->sc_flags);

	FUNC4(&nilfs->ns_inode_lock);
	if (FUNC0(&nilfs->ns_dirty_files) && FUNC1(sci))
		ret++;

	FUNC5(&nilfs->ns_inode_lock);
	return ret;
}