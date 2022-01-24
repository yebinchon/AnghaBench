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
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_perag {int pagf_init; scalar_t__ pagf_freeblks; scalar_t__ pagf_btreeblks; scalar_t__ pagf_flcount; scalar_t__ pagf_longest; scalar_t__* pagf_levels; int /*<<< orphan*/  pagf_agflreset; scalar_t__ pagf_refcount_level; } ;
struct xfs_mount {int dummy; } ;
struct xfs_buf {int /*<<< orphan*/  b_error; } ;
struct xfs_agf {int /*<<< orphan*/ * agf_levels; int /*<<< orphan*/  agf_longest; int /*<<< orphan*/  agf_flcount; int /*<<< orphan*/  agf_btreeblks; int /*<<< orphan*/  agf_freeblks; int /*<<< orphan*/  agf_refcount_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  XBF_TRYLOCK ; 
 int XFS_ALLOC_FLAG_TRYLOCK ; 
 size_t XFS_BTNUM_BNOi ; 
 size_t XFS_BTNUM_CNTi ; 
 size_t XFS_BTNUM_RMAPi ; 
 struct xfs_agf* FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_mount*,struct xfs_agf*) ; 
 struct xfs_perag* FUNC6 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_perag*) ; 
 int FUNC8 (struct xfs_mount*,struct xfs_trans*,scalar_t__,int /*<<< orphan*/ ,struct xfs_buf**) ; 

int					/* error */
FUNC9(
	struct xfs_mount	*mp,	/* mount point structure */
	struct xfs_trans	*tp,	/* transaction pointer */
	xfs_agnumber_t		agno,	/* allocation group number */
	int			flags,	/* XFS_ALLOC_FLAG_... */
	struct xfs_buf		**bpp)	/* buffer for the ag freelist header */
{
	struct xfs_agf		*agf;		/* ag freelist header */
	struct xfs_perag	*pag;		/* per allocation group data */
	int			error;

	FUNC4(mp, agno);

	FUNC0(agno != NULLAGNUMBER);
	error = FUNC8(mp, tp, agno,
			(flags & XFS_ALLOC_FLAG_TRYLOCK) ? XBF_TRYLOCK : 0,
			bpp);
	if (error)
		return error;
	if (!*bpp)
		return 0;
	FUNC0(!(*bpp)->b_error);

	agf = FUNC1(*bpp);
	pag = FUNC6(mp, agno);
	if (!pag->pagf_init) {
		pag->pagf_freeblks = FUNC3(agf->agf_freeblks);
		pag->pagf_btreeblks = FUNC3(agf->agf_btreeblks);
		pag->pagf_flcount = FUNC3(agf->agf_flcount);
		pag->pagf_longest = FUNC3(agf->agf_longest);
		pag->pagf_levels[XFS_BTNUM_BNOi] =
			FUNC3(agf->agf_levels[XFS_BTNUM_BNOi]);
		pag->pagf_levels[XFS_BTNUM_CNTi] =
			FUNC3(agf->agf_levels[XFS_BTNUM_CNTi]);
		pag->pagf_levels[XFS_BTNUM_RMAPi] =
			FUNC3(agf->agf_levels[XFS_BTNUM_RMAPi]);
		pag->pagf_refcount_level = FUNC3(agf->agf_refcount_level);
		pag->pagf_init = 1;
		pag->pagf_agflreset = FUNC5(mp, agf);
	}
#ifdef DEBUG
	else if (!XFS_FORCED_SHUTDOWN(mp)) {
		ASSERT(pag->pagf_freeblks == be32_to_cpu(agf->agf_freeblks));
		ASSERT(pag->pagf_btreeblks == be32_to_cpu(agf->agf_btreeblks));
		ASSERT(pag->pagf_flcount == be32_to_cpu(agf->agf_flcount));
		ASSERT(pag->pagf_longest == be32_to_cpu(agf->agf_longest));
		ASSERT(pag->pagf_levels[XFS_BTNUM_BNOi] ==
		       be32_to_cpu(agf->agf_levels[XFS_BTNUM_BNOi]));
		ASSERT(pag->pagf_levels[XFS_BTNUM_CNTi] ==
		       be32_to_cpu(agf->agf_levels[XFS_BTNUM_CNTi]));
	}
#endif
	FUNC7(pag);
	return 0;
}