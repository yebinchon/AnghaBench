#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ m_resblks; scalar_t__ m_resblks_avail; scalar_t__ m_alloc_set_aside; int /*<<< orphan*/  m_sb_lock; int /*<<< orphan*/  m_fdblocks; } ;
typedef  TYPE_1__ xfs_mount_t ;
struct TYPE_7__ {scalar_t__ resblks; scalar_t__ resblks_avail; } ;
typedef  TYPE_2__ xfs_fsop_resblks_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC4(
	xfs_mount_t             *mp,
	uint64_t              *inval,
	xfs_fsop_resblks_t      *outval)
{
	int64_t			lcounter, delta;
	int64_t			fdblks_delta = 0;
	uint64_t		request;
	int64_t			free;
	int			error = 0;

	/* If inval is null, report current values and return */
	if (inval == (uint64_t *)NULL) {
		if (!outval)
			return -EINVAL;
		outval->resblks = mp->m_resblks;
		outval->resblks_avail = mp->m_resblks_avail;
		return 0;
	}

	request = *inval;

	/*
	 * With per-cpu counters, this becomes an interesting problem. we need
	 * to work out if we are freeing or allocation blocks first, then we can
	 * do the modification as necessary.
	 *
	 * We do this under the m_sb_lock so that if we are near ENOSPC, we will
	 * hold out any changes while we work out what to do. This means that
	 * the amount of free space can change while we do this, so we need to
	 * retry if we end up trying to reserve more space than is available.
	 */
	FUNC1(&mp->m_sb_lock);

	/*
	 * If our previous reservation was larger than the current value,
	 * then move any unused blocks back to the free pool. Modify the resblks
	 * counters directly since we shouldn't have any problems unreserving
	 * space.
	 */
	if (mp->m_resblks > request) {
		lcounter = mp->m_resblks_avail - request;
		if (lcounter  > 0) {		/* release unused blocks */
			fdblks_delta = lcounter;
			mp->m_resblks_avail -= lcounter;
		}
		mp->m_resblks = request;
		if (fdblks_delta) {
			FUNC2(&mp->m_sb_lock);
			error = FUNC3(mp, fdblks_delta, 0);
			FUNC1(&mp->m_sb_lock);
		}

		goto out;
	}

	/*
	 * If the request is larger than the current reservation, reserve the
	 * blocks before we update the reserve counters. Sample m_fdblocks and
	 * perform a partial reservation if the request exceeds free space.
	 */
	error = -ENOSPC;
	do {
		free = FUNC0(&mp->m_fdblocks) -
						mp->m_alloc_set_aside;
		if (free <= 0)
			break;

		delta = request - mp->m_resblks;
		lcounter = free - delta;
		if (lcounter < 0)
			/* We can't satisfy the request, just get what we can */
			fdblks_delta = free;
		else
			fdblks_delta = delta;

		/*
		 * We'll either succeed in getting space from the free block
		 * count or we'll get an ENOSPC. If we get a ENOSPC, it means
		 * things changed while we were calculating fdblks_delta and so
		 * we should try again to see if there is anything left to
		 * reserve.
		 *
		 * Don't set the reserved flag here - we don't want to reserve
		 * the extra reserve blocks from the reserve.....
		 */
		FUNC2(&mp->m_sb_lock);
		error = FUNC3(mp, -fdblks_delta, 0);
		FUNC1(&mp->m_sb_lock);
	} while (error == -ENOSPC);

	/*
	 * Update the reserve counters if blocks have been successfully
	 * allocated.
	 */
	if (!error && fdblks_delta) {
		mp->m_resblks += fdblks_delta;
		mp->m_resblks_avail += fdblks_delta;
	}

out:
	if (outval) {
		outval->resblks = mp->m_resblks;
		outval->resblks_avail = mp->m_resblks_avail;
	}

	FUNC2(&mp->m_sb_lock);
	return error;
}