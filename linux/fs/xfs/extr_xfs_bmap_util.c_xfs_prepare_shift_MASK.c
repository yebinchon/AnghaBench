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
struct xfs_inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  NULLFILEOFF ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_inode*) ; 
 scalar_t__ FUNC1 (struct xfs_inode*,int) ; 
 int FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfs_inode*) ; 
 scalar_t__ FUNC4 (struct xfs_inode*) ; 
 int FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(
	struct xfs_inode	*ip,
	loff_t			offset)
{
	int			error;

	/*
	 * Trim eofblocks to avoid shifting uninitialized post-eof preallocation
	 * into the accessible region of the file.
	 */
	if (FUNC1(ip, true)) {
		error = FUNC3(ip);
		if (error)
			return error;
	}

	/*
	 * Writeback and invalidate cache for the remainder of the file as we're
	 * about to shift down every extent from offset to EOF.
	 */
	error = FUNC2(ip, offset, FUNC0(ip));
	if (error)
		return error;

	/*
	 * Clean out anything hanging around in the cow fork now that
	 * we've flushed all the dirty data out to disk to avoid having
	 * CoW extents at the wrong offsets.
	 */
	if (FUNC4(ip)) {
		error = FUNC5(ip, offset, NULLFILEOFF,
				true);
		if (error)
			return error;
	}

	return 0;
}