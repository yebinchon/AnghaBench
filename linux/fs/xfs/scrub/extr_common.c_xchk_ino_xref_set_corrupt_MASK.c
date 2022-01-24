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
typedef  int /*<<< orphan*/  xfs_ino_t ;
struct xfs_scrub {TYPE_1__* sm; } ;
struct TYPE_2__ {int /*<<< orphan*/  sm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_SCRUB_OFLAG_XCORRUPT ; 
 int /*<<< orphan*/  __return_address ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(
	struct xfs_scrub	*sc,
	xfs_ino_t		ino)
{
	sc->sm->sm_flags |= XFS_SCRUB_OFLAG_XCORRUPT;
	FUNC0(sc, ino, __return_address);
}