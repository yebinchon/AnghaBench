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
typedef  int /*<<< orphan*/ * xfs_failaddr_t ;
struct TYPE_7__ {int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {TYPE_2__ m_sb; } ;
struct xfs_buf {TYPE_1__* b_pag; struct xfs_mount* b_mount; } ;
struct xfs_agf {int /*<<< orphan*/  agf_refcount_level; int /*<<< orphan*/  agf_length; int /*<<< orphan*/  agf_btreeblks; int /*<<< orphan*/  agf_seqno; int /*<<< orphan*/ * agf_levels; int /*<<< orphan*/  agf_flcount; int /*<<< orphan*/  agf_fllast; int /*<<< orphan*/  agf_flfirst; int /*<<< orphan*/  agf_freeblks; int /*<<< orphan*/  agf_versionnum; int /*<<< orphan*/  agf_magicnum; int /*<<< orphan*/  agf_lsn; int /*<<< orphan*/  agf_uuid; } ;
struct TYPE_6__ {int pag_agno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t XFS_BTNUM_BNO ; 
 size_t XFS_BTNUM_CNT ; 
 size_t XFS_BTNUM_RMAP ; 
 int XFS_BTREE_MAXLEVELS ; 
 struct xfs_agf* FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/ * __this_address ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xfs_failaddr_t
FUNC12(
	struct xfs_buf		*bp)
{
	struct xfs_mount	*mp = bp->b_mount;
	struct xfs_agf		*agf = FUNC1(bp);

	if (FUNC7(&mp->m_sb)) {
		if (!FUNC4(&agf->agf_uuid, &mp->m_sb.sb_meta_uuid))
			return __this_address;
		if (!FUNC6(mp,
				FUNC3(FUNC1(bp)->agf_lsn)))
			return __this_address;
	}

	if (!FUNC11(bp, agf->agf_magicnum))
		return __this_address;

	if (!(FUNC0(FUNC2(agf->agf_versionnum)) &&
	      FUNC2(agf->agf_freeblks) <= FUNC2(agf->agf_length) &&
	      FUNC2(agf->agf_flfirst) < FUNC5(mp) &&
	      FUNC2(agf->agf_fllast) < FUNC5(mp) &&
	      FUNC2(agf->agf_flcount) <= FUNC5(mp)))
		return __this_address;

	if (FUNC2(agf->agf_levels[XFS_BTNUM_BNO]) < 1 ||
	    FUNC2(agf->agf_levels[XFS_BTNUM_CNT]) < 1 ||
	    FUNC2(agf->agf_levels[XFS_BTNUM_BNO]) > XFS_BTREE_MAXLEVELS ||
	    FUNC2(agf->agf_levels[XFS_BTNUM_CNT]) > XFS_BTREE_MAXLEVELS)
		return __this_address;

	if (FUNC10(&mp->m_sb) &&
	    (FUNC2(agf->agf_levels[XFS_BTNUM_RMAP]) < 1 ||
	     FUNC2(agf->agf_levels[XFS_BTNUM_RMAP]) > XFS_BTREE_MAXLEVELS))
		return __this_address;

	/*
	 * during growfs operations, the perag is not fully initialised,
	 * so we can't use it for any useful checking. growfs ensures we can't
	 * use it by using uncached buffers that don't have the perag attached
	 * so we can detect and avoid this problem.
	 */
	if (bp->b_pag && FUNC2(agf->agf_seqno) != bp->b_pag->pag_agno)
		return __this_address;

	if (FUNC8(&mp->m_sb) &&
	    FUNC2(agf->agf_btreeblks) > FUNC2(agf->agf_length))
		return __this_address;

	if (FUNC9(&mp->m_sb) &&
	    (FUNC2(agf->agf_refcount_level) < 1 ||
	     FUNC2(agf->agf_refcount_level) > XFS_BTREE_MAXLEVELS))
		return __this_address;

	return NULL;

}