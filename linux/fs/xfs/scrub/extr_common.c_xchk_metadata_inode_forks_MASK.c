#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xfs_scrub {TYPE_4__* ip; int /*<<< orphan*/  tp; TYPE_3__* mp; TYPE_2__* sm; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_7__ {int di_flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; } ;
struct TYPE_9__ {int /*<<< orphan*/  m_sb; } ;
struct TYPE_8__ {int sm_flags; int /*<<< orphan*/  sm_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int XFS_DIFLAG_REALTIME ; 
 int XFS_SCRUB_OFLAG_CORRUPT ; 
 int /*<<< orphan*/  XFS_SCRUB_TYPE_BMBTD ; 
 int FUNC0 (struct xfs_scrub*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(
	struct xfs_scrub	*sc)
{
	__u32			smtype;
	bool			shared;
	int			error;

	if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT)
		return 0;

	/* Metadata inodes don't live on the rt device. */
	if (sc->ip->i_d.di_flags & XFS_DIFLAG_REALTIME) {
		FUNC2(sc, sc->ip->i_ino);
		return 0;
	}

	/* They should never participate in reflink. */
	if (FUNC4(sc->ip)) {
		FUNC2(sc, sc->ip->i_ino);
		return 0;
	}

	/* They also should never have extended attributes. */
	if (FUNC3(sc->ip)) {
		FUNC2(sc, sc->ip->i_ino);
		return 0;
	}

	/* Invoke the data fork scrubber. */
	smtype = sc->sm->sm_type;
	sc->sm->sm_type = XFS_SCRUB_TYPE_BMBTD;
	error = FUNC0(sc);
	sc->sm->sm_type = smtype;
	if (error || (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT))
		return error;

	/* Look for incorrect shared blocks. */
	if (FUNC6(&sc->mp->m_sb)) {
		error = FUNC5(sc->tp, sc->ip,
				&shared);
		if (!FUNC1(sc, XFS_DATA_FORK, 0,
				&error))
			return error;
		if (shared)
			FUNC2(sc, sc->ip->i_ino);
	}

	return error;
}