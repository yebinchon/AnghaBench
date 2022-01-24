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
struct f2fs_map_blocks {scalar_t__ m_lblk; scalar_t__* m_next_extent; int m_may_create; scalar_t__ m_len; int /*<<< orphan*/  m_seg_type; int /*<<< orphan*/ * m_next_pgofs; } ;
struct f2fs_inode_info {int /*<<< orphan*/ * i_gc_rwsem; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ max_file_blocks; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  F2FS_GET_BLOCK_PRECACHE ; 
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_NO_EXTENT ; 
 int /*<<< orphan*/  NO_CHECK_TYPE ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,struct f2fs_map_blocks*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode)
{
	struct f2fs_inode_info *fi = FUNC0(inode);
	struct f2fs_map_blocks map;
	pgoff_t m_next_extent;
	loff_t end;
	int err;

	if (FUNC4(inode, FI_NO_EXTENT))
		return -EOPNOTSUPP;

	map.m_lblk = 0;
	map.m_next_pgofs = NULL;
	map.m_next_extent = &m_next_extent;
	map.m_seg_type = NO_CHECK_TYPE;
	map.m_may_create = false;
	end = FUNC1(inode)->max_file_blocks;

	while (map.m_lblk < end) {
		map.m_len = end - map.m_lblk;

		FUNC2(&fi->i_gc_rwsem[WRITE]);
		err = FUNC3(inode, &map, 0, F2FS_GET_BLOCK_PRECACHE);
		FUNC5(&fi->i_gc_rwsem[WRITE]);
		if (err)
			return err;

		map.m_lblk = m_next_extent;
	}

	return err;
}