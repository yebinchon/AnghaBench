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
typedef  scalar_t__ xfs_extlen_t ;
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_perag {scalar_t__ pagf_freeblks; int /*<<< orphan*/  pagf_metadata; int /*<<< orphan*/  pagf_init; } ;
struct TYPE_3__ {int sb_agblocks; scalar_t__ sb_agcount; } ;
struct xfs_mount {int /*<<< orphan*/  m_filestream; TYPE_1__ m_sb; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;
struct xfs_fstrm_item {int /*<<< orphan*/  mru; scalar_t__ ag; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_AG_RESV_NONE ; 
 int XFS_ALLOC_FLAG_TRYLOCK ; 
 int XFS_PICK_LOWSPACE ; 
 int XFS_PICK_USERDATA ; 
 struct xfs_fstrm_item* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_fstrm_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_perag*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct xfs_perag*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_mount*,struct xfs_perag*) ; 
 int FUNC10 (struct xfs_mount*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC11 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_mount*,scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct xfs_perag* FUNC14 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_perag*) ; 

__attribute__((used)) static int
FUNC16(
	struct xfs_inode	*ip,
	xfs_agnumber_t		startag,
	xfs_agnumber_t		*agp,
	int			flags,
	xfs_extlen_t		minlen)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_fstrm_item	*item;
	struct xfs_perag	*pag;
	xfs_extlen_t		longest, free = 0, minfree, maxfree = 0;
	xfs_agnumber_t		ag, max_ag = NULLAGNUMBER;
	int			err, trylock, nscan;

	FUNC0(FUNC1(FUNC2(ip)->i_mode));

	/* 2% of an AG's blocks must be free for it to be chosen. */
	minfree = mp->m_sb.sb_agblocks / 50;

	ag = startag;
	*agp = NULLAGNUMBER;

	/* For the first pass, don't sleep trying to init the per-AG. */
	trylock = XFS_ALLOC_FLAG_TRYLOCK;

	for (nscan = 0; 1; nscan++) {
		FUNC6(mp, ip->i_ino, ag);

		pag = FUNC14(mp, ag);

		if (!pag->pagf_init) {
			err = FUNC10(mp, NULL, ag, trylock);
			if (err && !trylock) {
				FUNC15(pag);
				return err;
			}
		}

		/* Might fail sometimes during the 1st pass with trylock set. */
		if (!pag->pagf_init)
			goto next_ag;

		/* Keep track of the AG with the most free blocks. */
		if (pag->pagf_freeblks > maxfree) {
			maxfree = pag->pagf_freeblks;
			max_ag = ag;
		}

		/*
		 * The AG reference count does two things: it enforces mutual
		 * exclusion when examining the suitability of an AG in this
		 * loop, and it guards against two filestreams being established
		 * in the same AG as each other.
		 */
		if (FUNC11(mp, ag) > 1) {
			FUNC12(mp, ag);
			goto next_ag;
		}

		longest = FUNC8(pag,
				FUNC9(mp, pag),
				FUNC7(pag, XFS_AG_RESV_NONE));
		if (((minlen && longest >= minlen) ||
		     (!minlen && pag->pagf_freeblks >= minfree)) &&
		    (!pag->pagf_metadata || !(flags & XFS_PICK_USERDATA) ||
		     (flags & XFS_PICK_LOWSPACE))) {

			/* Break out, retaining the reference on the AG. */
			free = pag->pagf_freeblks;
			FUNC15(pag);
			*agp = ag;
			break;
		}

		/* Drop the reference on this AG, it's not usable. */
		FUNC12(mp, ag);
next_ag:
		FUNC15(pag);
		/* Move to the next AG, wrapping to AG 0 if necessary. */
		if (++ag >= mp->m_sb.sb_agcount)
			ag = 0;

		/* If a full pass of the AGs hasn't been done yet, continue. */
		if (ag != startag)
			continue;

		/* Allow sleeping in xfs_alloc_pagf_init() on the 2nd pass. */
		if (trylock != 0) {
			trylock = 0;
			continue;
		}

		/* Finally, if lowspace wasn't set, set it for the 3rd pass. */
		if (!(flags & XFS_PICK_LOWSPACE)) {
			flags |= XFS_PICK_LOWSPACE;
			continue;
		}

		/*
		 * Take the AG with the most free space, regardless of whether
		 * it's already in use by another filestream.
		 */
		if (max_ag != NULLAGNUMBER) {
			FUNC11(mp, max_ag);
			free = maxfree;
			*agp = max_ag;
			break;
		}

		/* take AG 0 if none matched */
		FUNC5(ip, *agp, free, nscan);
		*agp = 0;
		return 0;
	}

	FUNC5(ip, *agp, free, nscan);

	if (*agp == NULLAGNUMBER)
		return 0;

	err = -ENOMEM;
	item = FUNC3(sizeof(*item), KM_MAYFAIL);
	if (!item)
		goto out_put_ag;

	item->ag = *agp;

	err = FUNC13(mp->m_filestream, ip->i_ino, &item->mru);
	if (err) {
		if (err == -EEXIST)
			err = 0;
		goto out_free_item;
	}

	return 0;

out_free_item:
	FUNC4(item);
out_put_ag:
	FUNC12(mp, *agp);
	return err;
}