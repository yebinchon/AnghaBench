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
struct kiocb {int ki_flags; scalar_t__ ki_pos; int /*<<< orphan*/  ki_hint; int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_map_blocks {scalar_t__ m_lblk; scalar_t__ m_len; int m_may_create; int /*<<< orphan*/  m_seg_type; int /*<<< orphan*/ * m_next_extent; int /*<<< orphan*/ * m_next_pgofs; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int F2FS_GET_BLOCK_PRE_AIO ; 
 int F2FS_GET_BLOCK_PRE_DIO ; 
 int /*<<< orphan*/  FI_NO_PREALLOC ; 
 int IOCB_DIRECT ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  NO_CHECK_TYPE ; 
 scalar_t__ FUNC3 (struct inode*,struct kiocb*,struct iov_iter*) ; 
 int FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*,struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct f2fs_map_blocks*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct iov_iter*) ; 
 scalar_t__ FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC13(struct kiocb *iocb, struct iov_iter *from)
{
	struct inode *inode = FUNC9(iocb->ki_filp);
	struct f2fs_map_blocks map;
	int flag;
	int err = 0;
	bool direct_io = iocb->ki_flags & IOCB_DIRECT;

	/* convert inline data for Direct I/O*/
	if (direct_io) {
		err = FUNC4(inode);
		if (err)
			return err;
	}

	if (direct_io && FUNC3(inode, iocb, from))
		return 0;

	if (FUNC11(inode, FI_NO_PREALLOC))
		return 0;

	map.m_lblk = FUNC0(iocb->ki_pos);
	map.m_len = FUNC1(iocb->ki_pos + FUNC10(from));
	if (map.m_len > map.m_lblk)
		map.m_len -= map.m_lblk;
	else
		map.m_len = 0;

	map.m_next_pgofs = NULL;
	map.m_next_extent = NULL;
	map.m_seg_type = NO_CHECK_TYPE;
	map.m_may_create = true;

	if (direct_io) {
		map.m_seg_type = FUNC8(iocb->ki_hint);
		flag = FUNC5(inode, iocb, from) ?
					F2FS_GET_BLOCK_PRE_AIO :
					F2FS_GET_BLOCK_PRE_DIO;
		goto map_blocks;
	}
	if (iocb->ki_pos + FUNC10(from) > FUNC2(inode)) {
		err = FUNC4(inode);
		if (err)
			return err;
	}
	if (FUNC6(inode))
		return err;

	flag = F2FS_GET_BLOCK_PRE_AIO;

map_blocks:
	err = FUNC7(inode, &map, 1, flag);
	if (map.m_len > 0 && err == -ENOSPC) {
		if (!direct_io)
			FUNC12(inode, FI_NO_PREALLOC);
		err = 0;
	}
	return err;
}