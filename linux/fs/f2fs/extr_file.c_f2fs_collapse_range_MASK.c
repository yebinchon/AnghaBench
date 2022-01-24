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
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 int F2FS_BLKSIZE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__) ; 
 int FUNC5 (struct inode*,scalar_t__,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, loff_t offset, loff_t len)
{
	loff_t new_size;
	int ret;

	if (offset + len >= FUNC7(inode))
		return -EINVAL;

	/* collapse range should be aligned to block size of f2fs. */
	if (offset & (F2FS_BLKSIZE - 1) || len & (F2FS_BLKSIZE - 1))
		return -EINVAL;

	ret = FUNC2(inode);
	if (ret)
		return ret;

	/* write out all dirty pages from offset */
	ret = FUNC6(inode->i_mapping, offset, LLONG_MAX);
	if (ret)
		return ret;

	ret = FUNC3(inode, offset, len);
	if (ret)
		return ret;

	/* write out all moved pages, if possible */
	FUNC1(&FUNC0(inode)->i_mmap_sem);
	FUNC6(inode->i_mapping, offset, LLONG_MAX);
	FUNC8(inode, offset);

	new_size = FUNC7(inode) - len;
	FUNC8(inode, new_size);

	ret = FUNC5(inode, new_size, true);
	FUNC9(&FUNC0(inode)->i_mmap_sem);
	if (!ret)
		FUNC4(inode, new_size);
	return ret;
}