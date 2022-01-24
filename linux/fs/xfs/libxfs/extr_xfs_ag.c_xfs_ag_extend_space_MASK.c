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
typedef  scalar_t__ xfs_extlen_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_2__ {int sb_agcount; scalar_t__ sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
struct xfs_agi {scalar_t__ agi_length; } ;
struct xfs_agf {scalar_t__ agf_length; } ;
struct aghdr_init_data {int agno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int,scalar_t__) ; 
 int /*<<< orphan*/  XFS_AGF_LENGTH ; 
 int /*<<< orphan*/  XFS_AGI_LENGTH ; 
 int /*<<< orphan*/  XFS_AG_RESV_NONE ; 
 struct xfs_agf* FUNC2 (struct xfs_buf*) ; 
 struct xfs_agi* FUNC3 (struct xfs_buf*) ; 
 int /*<<< orphan*/  XFS_RMAP_OINFO_SKIP_UPDATE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_mount*,struct xfs_trans*,int,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int FUNC8 (struct xfs_trans*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct xfs_mount*,struct xfs_trans*,int,struct xfs_buf**) ; 
 int FUNC11 (struct xfs_trans*,struct xfs_buf*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC12(
	struct xfs_mount	*mp,
	struct xfs_trans	*tp,
	struct aghdr_init_data	*id,
	xfs_extlen_t		len)
{
	struct xfs_buf		*bp;
	struct xfs_agi		*agi;
	struct xfs_agf		*agf;
	int			error;

	/*
	 * Change the agi length.
	 */
	error = FUNC10(mp, tp, id->agno, &bp);
	if (error)
		return error;

	agi = FUNC3(bp);
	FUNC4(&agi->agi_length, len);
	FUNC0(id->agno == mp->m_sb.sb_agcount - 1 ||
	       FUNC5(agi->agi_length) == mp->m_sb.sb_agblocks);
	FUNC9(tp, bp, XFS_AGI_LENGTH);

	/*
	 * Change agf length.
	 */
	error = FUNC7(mp, tp, id->agno, 0, &bp);
	if (error)
		return error;

	agf = FUNC2(bp);
	FUNC4(&agf->agf_length, len);
	FUNC0(agf->agf_length == agi->agi_length);
	FUNC6(tp, bp, XFS_AGF_LENGTH);

	/*
	 * Free the new space.
	 *
	 * XFS_RMAP_OINFO_SKIP_UPDATE is used here to tell the rmap btree that
	 * this doesn't actually exist in the rmap btree.
	 */
	error = FUNC11(tp, bp, id->agno,
				FUNC5(agf->agf_length) - len,
				len, &XFS_RMAP_OINFO_SKIP_UPDATE);
	if (error)
		return error;

	return  FUNC8(tp, FUNC1(mp, id->agno,
					FUNC5(agf->agf_length) - len),
				len, &XFS_RMAP_OINFO_SKIP_UPDATE,
				XFS_AG_RESV_NONE);
}