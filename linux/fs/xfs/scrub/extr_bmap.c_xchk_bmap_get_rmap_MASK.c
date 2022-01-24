#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct xfs_rmap_irec {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; } ;
struct xchk_bmap_info {scalar_t__ whichfork; TYPE_2__* sc; scalar_t__ is_shared; } ;
struct TYPE_4__ {int /*<<< orphan*/  rmap_cur; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;

/* Variables and functions */
 scalar_t__ XFS_ATTR_FORK ; 
 scalar_t__ XFS_COW_FORK ; 
 unsigned int XFS_RMAP_ATTR_FORK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct xfs_rmap_irec*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int,struct xfs_rmap_irec*,int*) ; 

__attribute__((used)) static inline bool
FUNC5(
	struct xchk_bmap_info	*info,
	struct xfs_bmbt_irec	*irec,
	xfs_agblock_t		agbno,
	uint64_t		owner,
	struct xfs_rmap_irec	*rmap)
{
	xfs_fileoff_t		offset;
	unsigned int		rflags = 0;
	int			has_rmap;
	int			error;

	if (info->whichfork == XFS_ATTR_FORK)
		rflags |= XFS_RMAP_ATTR_FORK;

	/*
	 * CoW staging extents are owned (on disk) by the refcountbt, so
	 * their rmaps do not have offsets.
	 */
	if (info->whichfork == XFS_COW_FORK)
		offset = 0;
	else
		offset = irec->br_startoff;

	/*
	 * If the caller thinks this could be a shared bmbt extent (IOWs,
	 * any data fork extent of a reflink inode) then we have to use the
	 * range rmap lookup to make sure we get the correct owner/offset.
	 */
	if (info->is_shared) {
		error = FUNC4(info->sc->sa.rmap_cur, agbno,
				owner, offset, rflags, rmap, &has_rmap);
		if (!FUNC1(info->sc, &error,
				&info->sc->sa.rmap_cur))
			return false;
		goto out;
	}

	/*
	 * Otherwise, use the (faster) regular lookup.
	 */
	error = FUNC3(info->sc->sa.rmap_cur, agbno, 0, owner,
			offset, rflags, &has_rmap);
	if (!FUNC1(info->sc, &error,
			&info->sc->sa.rmap_cur))
		return false;
	if (!has_rmap)
		goto out;

	error = FUNC2(info->sc->sa.rmap_cur, rmap, &has_rmap);
	if (!FUNC1(info->sc, &error,
			&info->sc->sa.rmap_cur))
		return false;

out:
	if (!has_rmap)
		FUNC0(info->sc, info->whichfork,
			irec->br_startoff);
	return has_rmap;
}