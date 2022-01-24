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
struct xfs_inode {int dummy; } ;
struct TYPE_3__ {char* if_data; } ;
struct xfs_ifork {int if_bytes; int if_flags; TYPE_1__ if_u1; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_NOFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct xfs_inode*) ; 
 int XFS_IFBROOT ; 
 int XFS_IFEXTENTS ; 
 int XFS_IFINLINE ; 
 struct xfs_ifork* FUNC2 (struct xfs_inode*,int) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,void const*,int) ; 
 int FUNC5 (int,int) ; 

void
FUNC6(
	struct xfs_inode	*ip,
	int			whichfork,
	const void		*data,
	int			size)
{
	struct xfs_ifork	*ifp = FUNC2(ip, whichfork);
	int			mem_size = size, real_size = 0;
	bool			zero_terminate;

	/*
	 * If we are using the local fork to store a symlink body we need to
	 * zero-terminate it so that we can pass it back to the VFS directly.
	 * Overallocate the in-memory fork by one for that and add a zero
	 * to terminate it below.
	 */
	zero_terminate = FUNC0(FUNC1(ip)->i_mode);
	if (zero_terminate)
		mem_size++;

	if (size) {
		real_size = FUNC5(mem_size, 4);
		ifp->if_u1.if_data = FUNC3(real_size, KM_NOFS);
		FUNC4(ifp->if_u1.if_data, data, size);
		if (zero_terminate)
			ifp->if_u1.if_data[size] = '\0';
	} else {
		ifp->if_u1.if_data = NULL;
	}

	ifp->if_bytes = size;
	ifp->if_flags &= ~(XFS_IFEXTENTS | XFS_IFBROOT);
	ifp->if_flags |= XFS_IFINLINE;
}