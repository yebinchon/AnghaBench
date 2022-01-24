#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct hfsplus_inode_info {int extent_state; scalar_t__ cached_blocks; scalar_t__ cached_start; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  extents_lock; } ;
struct hfs_find_data {TYPE_2__* key; } ;
struct TYPE_3__ {int /*<<< orphan*/  start_block; } ;
struct TYPE_4__ {TYPE_1__ ext; } ;

/* Variables and functions */
 int HFSPLUS_EXT_DIRTY ; 
 int HFSPLUS_EXT_NEW ; 
 struct hfsplus_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  HFSPLUS_TYPE_DATA ; 
 int /*<<< orphan*/  HFSPLUS_TYPE_RSRC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct hfs_find_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct hfs_find_data*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC8(struct hfs_find_data *fd,
		struct inode *inode, u32 block)
{
	struct hfsplus_inode_info *hip = FUNC0(inode);
	int res;

	FUNC2(!FUNC7(&hip->extents_lock));

	if (hip->extent_state & HFSPLUS_EXT_DIRTY) {
		res = FUNC4(inode, fd);
		if (res)
			return res;
	}

	res = FUNC3(fd, hip->cached_extents, inode->i_ino,
					block, FUNC1(inode) ?
						HFSPLUS_TYPE_RSRC :
						HFSPLUS_TYPE_DATA);
	if (!res) {
		hip->cached_start = FUNC5(fd->key->ext.start_block);
		hip->cached_blocks =
			FUNC6(hip->cached_extents);
	} else {
		hip->cached_start = hip->cached_blocks = 0;
		hip->extent_state &= ~(HFSPLUS_EXT_DIRTY | HFSPLUS_EXT_NEW);
	}
	return res;
}