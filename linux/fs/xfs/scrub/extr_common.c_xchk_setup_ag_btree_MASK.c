#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfs_scrub {int /*<<< orphan*/  sa; TYPE_1__* sm; struct xfs_mount* mp; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sm_agno; } ;

/* Variables and functions */
 int FUNC0 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xfs_mount*) ; 
 int FUNC2 (struct xfs_scrub*,struct xfs_inode*) ; 

int
FUNC3(
	struct xfs_scrub	*sc,
	struct xfs_inode	*ip,
	bool			force_log)
{
	struct xfs_mount	*mp = sc->mp;
	int			error;

	/*
	 * If the caller asks us to checkpont the log, do so.  This
	 * expensive operation should be performed infrequently and only
	 * as a last resort.  Any caller that sets force_log should
	 * document why they need to do so.
	 */
	if (force_log) {
		error = FUNC1(mp);
		if (error)
			return error;
	}

	error = FUNC2(sc, ip);
	if (error)
		return error;

	return FUNC0(sc, sc->sm->sm_agno, &sc->sa);
}