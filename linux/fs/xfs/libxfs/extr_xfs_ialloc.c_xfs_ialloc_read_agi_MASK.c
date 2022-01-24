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
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_perag {int pagi_init; scalar_t__ pagi_freecount; scalar_t__ pagi_count; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agi {int /*<<< orphan*/  agi_freecount; int /*<<< orphan*/  agi_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct xfs_agi* FUNC1 (struct xfs_buf*) ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 struct xfs_perag* FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_perag*) ; 
 int FUNC7 (struct xfs_mount*,struct xfs_trans*,int /*<<< orphan*/ ,struct xfs_buf**) ; 

int
FUNC8(
	struct xfs_mount	*mp,	/* file system mount structure */
	struct xfs_trans	*tp,	/* transaction pointer */
	xfs_agnumber_t		agno,	/* allocation group number */
	struct xfs_buf		**bpp)	/* allocation group hdr buf */
{
	struct xfs_agi		*agi;	/* allocation group header */
	struct xfs_perag	*pag;	/* per allocation group data */
	int			error;

	FUNC4(mp, agno);

	error = FUNC7(mp, tp, agno, bpp);
	if (error)
		return error;

	agi = FUNC1(*bpp);
	pag = FUNC5(mp, agno);
	if (!pag->pagi_init) {
		pag->pagi_freecount = FUNC3(agi->agi_freecount);
		pag->pagi_count = FUNC3(agi->agi_count);
		pag->pagi_init = 1;
	}

	/*
	 * It's possible for these to be out of sync if
	 * we are in the middle of a forced shutdown.
	 */
	FUNC0(pag->pagi_freecount == FUNC3(agi->agi_freecount) ||
		FUNC2(mp));
	FUNC6(pag);
	return 0;
}