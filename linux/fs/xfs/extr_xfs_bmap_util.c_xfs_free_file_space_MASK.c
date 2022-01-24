#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_off_t ;
typedef  scalar_t__ xfs_fileoff_t ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__* FUNC0 (struct xfs_inode*) ; 
 scalar_t__ FUNC1 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct xfs_inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*) ; 
 int FUNC9 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  xfs_iomap_ops ; 
 int FUNC10 (struct xfs_inode*) ; 
 int FUNC11 (struct xfs_inode*,scalar_t__,scalar_t__,int*) ; 

int
FUNC12(
	struct xfs_inode	*ip,
	xfs_off_t		offset,
	xfs_off_t		len)
{
	struct xfs_mount	*mp = ip->i_mount;
	xfs_fileoff_t		startoffset_fsb;
	xfs_fileoff_t		endoffset_fsb;
	int			done = 0, error;

	FUNC8(ip);

	error = FUNC10(ip);
	if (error)
		return error;

	if (len <= 0)	/* if nothing being freed */
		return 0;

	error = FUNC9(ip, offset, len);
	if (error)
		return error;

	startoffset_fsb = FUNC1(mp, offset);
	endoffset_fsb = FUNC2(mp, offset + len);

	/*
	 * Need to zero the stuff we're not freeing, on disk.
	 */
	if (endoffset_fsb > startoffset_fsb) {
		while (!done) {
			error = FUNC11(ip, startoffset_fsb,
					endoffset_fsb - startoffset_fsb, &done);
			if (error)
				return error;
		}
	}

	/*
	 * Now that we've unmap all full blocks we'll have to zero out any
	 * partial block at the beginning and/or end.  iomap_zero_range is smart
	 * enough to skip any holes, including those we just created, but we
	 * must take care not to zero beyond EOF and enlarge i_size.
	 */
	if (offset >= FUNC3(ip))
		return 0;
	if (offset + len > FUNC3(ip))
		len = FUNC3(ip) - offset;
	error = FUNC5(FUNC0(ip), offset, len, NULL, &xfs_iomap_ops);
	if (error)
		return error;

	/*
	 * If we zeroed right up to EOF and EOF straddles a page boundary we
	 * must make sure that the post-EOF area is also zeroed because the
	 * page could be mmap'd and iomap_zero_range doesn't do that for us.
	 * Writeback of the eof page will do this, albeit clumsily.
	 */
	if (offset + len >= FUNC3(ip) && FUNC6(offset + len) > 0) {
		error = FUNC4(FUNC0(ip)->i_mapping,
				FUNC7(offset + len, PAGE_SIZE), LLONG_MAX);
	}

	return error;
}