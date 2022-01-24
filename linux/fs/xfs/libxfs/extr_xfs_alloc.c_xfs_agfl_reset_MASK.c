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
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_perag {int pagf_agflreset; int /*<<< orphan*/  pagf_flcount; int /*<<< orphan*/  pag_agno; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agf {scalar_t__ agf_flcount; int /*<<< orphan*/  agf_fllast; scalar_t__ agf_flfirst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XFS_AGF_FLCOUNT ; 
 int XFS_AGF_FLFIRST ; 
 int XFS_AGF_FLLAST ; 
 struct xfs_agf* FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,struct xfs_agf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_trans*,struct xfs_buf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(
	struct xfs_trans	*tp,
	struct xfs_buf		*agbp,
	struct xfs_perag	*pag)
{
	struct xfs_mount	*mp = tp->t_mountp;
	struct xfs_agf		*agf = FUNC1(agbp);

	FUNC0(pag->pagf_agflreset);
	FUNC3(mp, agf, 0, _RET_IP_);

	FUNC6(mp,
	       "WARNING: Reset corrupted AGFL on AG %u. %d blocks leaked. "
	       "Please unmount and run xfs_repair.",
	         pag->pag_agno, pag->pagf_flcount);

	agf->agf_flfirst = 0;
	agf->agf_fllast = FUNC2(FUNC4(mp) - 1);
	agf->agf_flcount = 0;
	FUNC5(tp, agbp, XFS_AGF_FLFIRST | XFS_AGF_FLLAST |
				    XFS_AGF_FLCOUNT);

	pag->pagf_flcount = 0;
	pag->pagf_agflreset = false;
}