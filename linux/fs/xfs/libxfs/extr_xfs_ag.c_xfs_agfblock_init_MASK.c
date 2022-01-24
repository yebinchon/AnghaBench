#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int xfs_extlen_t ;
struct TYPE_4__ {int sb_logblocks; int /*<<< orphan*/  sb_logstart; int /*<<< orphan*/  sb_meta_uuid; } ;
struct xfs_mount {int m_ag_prealloc_blocks; TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agf {void* agf_longest; void* agf_freeblks; void* agf_refcount_blocks; void* agf_refcount_level; void* agf_refcount_root; int /*<<< orphan*/  agf_uuid; scalar_t__ agf_flcount; scalar_t__ agf_fllast; void* agf_flfirst; void* agf_rmap_blocks; void** agf_levels; void** agf_roots; void* agf_length; void* agf_seqno; void* agf_versionnum; void* agf_magicnum; } ;
struct aghdr_init_data {int agno; int agsize; } ;
typedef  int int64_t ;

/* Variables and functions */
 int XFS_AGF_MAGIC ; 
 int XFS_AGF_VERSION ; 
 int FUNC0 (struct xfs_mount*) ; 
 size_t XFS_BTNUM_BNOi ; 
 size_t XFS_BTNUM_CNTi ; 
 size_t XFS_BTNUM_RMAPi ; 
 struct xfs_agf* FUNC1 (struct xfs_buf*) ; 
 int FUNC2 (struct xfs_mount*) ; 
 int FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC5 (void**,int) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct xfs_mount*,struct aghdr_init_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct xfs_mount*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC13(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp,
	struct aghdr_init_data	*id)
{
	struct xfs_agf		*agf = FUNC1(bp);
	xfs_extlen_t		tmpsize;

	agf->agf_magicnum = FUNC6(XFS_AGF_MAGIC);
	agf->agf_versionnum = FUNC6(XFS_AGF_VERSION);
	agf->agf_seqno = FUNC6(id->agno);
	agf->agf_length = FUNC6(id->agsize);
	agf->agf_roots[XFS_BTNUM_BNOi] = FUNC6(FUNC0(mp));
	agf->agf_roots[XFS_BTNUM_CNTi] = FUNC6(FUNC2(mp));
	agf->agf_levels[XFS_BTNUM_BNOi] = FUNC6(1);
	agf->agf_levels[XFS_BTNUM_CNTi] = FUNC6(1);
	if (FUNC12(&mp->m_sb)) {
		agf->agf_roots[XFS_BTNUM_RMAPi] =
					FUNC6(FUNC4(mp));
		agf->agf_levels[XFS_BTNUM_RMAPi] = FUNC6(1);
		agf->agf_rmap_blocks = FUNC6(1);
	}

	agf->agf_flfirst = FUNC6(1);
	agf->agf_fllast = 0;
	agf->agf_flcount = 0;
	tmpsize = id->agsize - mp->m_ag_prealloc_blocks;
	agf->agf_freeblks = FUNC6(tmpsize);
	agf->agf_longest = FUNC6(tmpsize);
	if (FUNC10(&mp->m_sb))
		FUNC8(&agf->agf_uuid, &mp->m_sb.sb_meta_uuid);
	if (FUNC11(&mp->m_sb)) {
		agf->agf_refcount_root = FUNC6(
				FUNC9(mp));
		agf->agf_refcount_level = FUNC6(1);
		agf->agf_refcount_blocks = FUNC6(1);
	}

	if (FUNC7(mp, id)) {
		int64_t	logblocks = mp->m_sb.sb_logblocks;

		FUNC5(&agf->agf_freeblks, -logblocks);
		agf->agf_longest = FUNC6(id->agsize -
			FUNC3(mp, mp->m_sb.sb_logstart) - logblocks);
	}
}