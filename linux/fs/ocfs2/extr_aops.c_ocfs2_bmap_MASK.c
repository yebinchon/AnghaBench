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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int ip_dyn_features; int /*<<< orphan*/  ip_alloc_sem; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inode*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static sector_t FUNC11(struct address_space *mapping, sector_t block)
{
	sector_t status;
	u64 p_blkno = 0;
	int err = 0;
	struct inode *inode = mapping->host;

	FUNC9((unsigned long long)FUNC1(inode)->ip_blkno,
			 (unsigned long long)block);

	/*
	 * The swap code (ab-)uses ->bmap to get a block mapping and then
	 * bypasseѕ the file system for actual I/O.  We really can't allow
	 * that on refcounted inodes, so we have to skip out here.  And yes,
	 * 0 is the magic code for a bmap error..
	 */
	if (FUNC8(inode))
		return 0;

	/* We don't need to lock journal system files, since they aren't
	 * accessed concurrently from multiple nodes.
	 */
	if (!FUNC0(inode)) {
		err = FUNC6(inode, NULL, 0);
		if (err) {
			if (err != -ENOENT)
				FUNC4(err);
			goto bail;
		}
		FUNC2(&FUNC1(inode)->ip_alloc_sem);
	}

	if (!(FUNC1(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL))
		err = FUNC5(inode, block, &p_blkno, NULL,
						  NULL);

	if (!FUNC0(inode)) {
		FUNC10(&FUNC1(inode)->ip_alloc_sem);
		FUNC7(inode, 0);
	}

	if (err) {
		FUNC3(ML_ERROR, "get_blocks() failed, block = %llu\n",
		     (unsigned long long)block);
		FUNC4(err);
		goto bail;
	}

bail:
	status = err ? 0 : p_blkno;

	return status;
}