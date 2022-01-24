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
typedef  scalar_t__ u64 ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_3__ {scalar_t__ di_size; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct iomap {scalar_t__ offset; scalar_t__ length; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  tr_ichange; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATTR_ATIME ; 
 int ATTR_CTIME ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 TYPE_2__* FUNC1 (struct xfs_mount*) ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct xfs_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  XFS_IOLOCK_EXCL ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xfs_inode*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct xfs_inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*,struct iattr*) ; 
 int FUNC12 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int FUNC13 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_trans*) ; 

int
FUNC17(
	struct inode		*inode,
	struct iomap		*maps,
	int			nr_maps,
	struct iattr		*iattr)
{
	struct xfs_inode	*ip = FUNC3(inode);
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_trans	*tp;
	bool			update_isize = false;
	int			error, i;
	loff_t			size;

	FUNC0(iattr->ia_valid & (ATTR_ATIME|ATTR_CTIME|ATTR_MTIME));

	FUNC7(ip, XFS_IOLOCK_EXCL);

	size = FUNC4(inode);
	if ((iattr->ia_valid & ATTR_SIZE) && iattr->ia_size > size) {
		update_isize = true;
		size = iattr->ia_size;
	}

	for (i = 0; i < nr_maps; i++) {
		u64 start, length, end;

		start = maps[i].offset;
		if (start > size)
			continue;

		end = start + maps[i].length;
		if (end > size)
			end = size;

		length = end - start;
		if (!length)
			continue;
	
		/*
		 * Make sure reads through the pagecache see the new data.
		 */
		error = FUNC6(inode->i_mapping,
					start >> PAGE_SHIFT,
					(end - 1) >> PAGE_SHIFT);
		FUNC2(error);

		error = FUNC8(ip, start, length, false);
		if (error)
			goto out_drop_iolock;
	}

	if (update_isize) {
		error = FUNC10(ip, size);
		if (error)
			goto out_drop_iolock;
	}

	error = FUNC12(mp, &FUNC1(mp)->tr_ichange, 0, 0, 0, &tp);
	if (error)
		goto out_drop_iolock;

	FUNC7(ip, XFS_ILOCK_EXCL);
	FUNC14(tp, ip, XFS_ILOCK_EXCL);
	FUNC15(tp, ip, XFS_ILOG_CORE);

	FUNC11(ip, iattr);
	if (update_isize) {
		FUNC5(inode, iattr->ia_size);
		ip->i_d.di_size = iattr->ia_size;
	}

	FUNC16(tp);
	error = FUNC13(tp);

out_drop_iolock:
	FUNC9(ip, XFS_IOLOCK_EXCL);
	return error;
}