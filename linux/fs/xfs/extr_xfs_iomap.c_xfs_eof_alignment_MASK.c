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
typedef  scalar_t__ xfs_extlen_t ;
struct xfs_mount {int m_flags; scalar_t__ m_dalign; scalar_t__ m_swidth; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*) ; 
 int XFS_MOUNT_SWALLOC ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

xfs_extlen_t
FUNC4(
	struct xfs_inode	*ip,
	xfs_extlen_t		extsize)
{
	struct xfs_mount	*mp = ip->i_mount;
	xfs_extlen_t		align = 0;

	if (!FUNC2(ip)) {
		/*
		 * Round up the allocation request to a stripe unit
		 * (m_dalign) boundary if the file size is >= stripe unit
		 * size, and we are allocating past the allocation eof.
		 *
		 * If mounted with the "-o swalloc" option the alignment is
		 * increased from the strip unit size to the stripe width.
		 */
		if (mp->m_swidth && (mp->m_flags & XFS_MOUNT_SWALLOC))
			align = mp->m_swidth;
		else if (mp->m_dalign)
			align = mp->m_dalign;

		if (align && FUNC1(ip) < FUNC0(mp, align))
			align = 0;
	}

	/*
	 * Always round up the allocation request to an extent boundary
	 * (when file on a real-time subvolume or has di_extsize hint).
	 */
	if (extsize) {
		if (align)
			align = FUNC3(align, extsize);
		else
			align = extsize;
	}

	return align;
}