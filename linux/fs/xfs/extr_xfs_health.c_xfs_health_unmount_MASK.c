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
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfs_mount*) ; 
 unsigned int XFS_SICK_FS_COUNTERS ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_perag*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,unsigned int*,unsigned int*) ; 
 struct xfs_perag* FUNC7 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_perag*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_mount*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*,char*) ; 

void
FUNC11(
	struct xfs_mount	*mp)
{
	struct xfs_perag	*pag;
	xfs_agnumber_t		agno;
	unsigned int		sick = 0;
	unsigned int		checked = 0;
	bool			warn = false;

	if (FUNC0(mp))
		return;

	/* Measure AG corruption levels. */
	for (agno = 0; agno < mp->m_sb.sb_agcount; agno++) {
		pag = FUNC7(mp, agno);
		FUNC4(pag, &sick, &checked);
		if (sick) {
			FUNC1(mp, agno, sick);
			warn = true;
		}
		FUNC8(pag);
	}

	/* Measure realtime volume corruption levels. */
	FUNC9(mp, &sick, &checked);
	if (sick) {
		FUNC3(mp, sick);
		warn = true;
	}

	/*
	 * Measure fs corruption and keep the sample around for the warning.
	 * See the note below for why we exempt FS_COUNTERS.
	 */
	FUNC6(mp, &sick, &checked);
	if (sick & ~XFS_SICK_FS_COUNTERS) {
		FUNC2(mp, sick);
		warn = true;
	}

	if (warn) {
		FUNC10(mp,
"Uncorrected metadata errors detected; please run xfs_repair.");

		/*
		 * We discovered uncorrected metadata problems at some point
		 * during this filesystem mount and have advised the
		 * administrator to run repair once the unmount completes.
		 *
		 * However, we must be careful -- when FSCOUNTERS are flagged
		 * unhealthy, the unmount procedure omits writing the clean
		 * unmount record to the log so that the next mount will run
		 * recovery and recompute the summary counters.  In other
		 * words, we leave a dirty log to get the counters fixed.
		 *
		 * Unfortunately, xfs_repair cannot recover dirty logs, so if
		 * there were filesystem problems, FSCOUNTERS was flagged, and
		 * the administrator takes our advice to run xfs_repair,
		 * they'll have to zap the log before repairing structures.
		 * We don't really want to encourage this, so we mark the
		 * FSCOUNTERS healthy so that a subsequent repair run won't see
		 * a dirty log.
		 */
		if (sick & XFS_SICK_FS_COUNTERS)
			FUNC5(mp, XFS_SICK_FS_COUNTERS);
	}
}