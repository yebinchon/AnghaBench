#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xfs_quotainfo {int /*<<< orphan*/  qi_pquotaip; int /*<<< orphan*/  qi_gquotaip; int /*<<< orphan*/  qi_uquotaip; int /*<<< orphan*/  qi_dquots; } ;
struct TYPE_3__ {int /*<<< orphan*/  sb_pquotino; int /*<<< orphan*/  sb_gquotino; int /*<<< orphan*/  sb_uquotino; } ;
struct xfs_mount {TYPE_1__ m_sb; struct xfs_quotainfo* m_quotainfo; } ;
struct super_block {int dummy; } ;
struct qc_state {TYPE_2__* s_state; int /*<<< orphan*/  s_incoredqs; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 size_t GRPQUOTA ; 
 size_t PRJQUOTA ; 
 int /*<<< orphan*/  QCI_ACCT_ENABLED ; 
 int /*<<< orphan*/  QCI_LIMITS_ENFORCED ; 
 size_t USRQUOTA ; 
 scalar_t__ FUNC0 (struct xfs_mount*) ; 
 scalar_t__ FUNC1 (struct xfs_mount*) ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 scalar_t__ FUNC3 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*) ; 
 scalar_t__ FUNC5 (struct xfs_mount*) ; 
 scalar_t__ FUNC6 (struct xfs_mount*) ; 
 struct xfs_mount* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct qc_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(
	struct super_block	*sb,
	struct qc_state		*state)
{
	struct xfs_mount *mp = FUNC7(sb);
	struct xfs_quotainfo *q = mp->m_quotainfo;

	FUNC8(state, 0, sizeof(*state));
	if (!FUNC4(mp))
		return 0;
	state->s_incoredqs = q->qi_dquots;
	if (FUNC6(mp))
		state->s_state[USRQUOTA].flags |= QCI_ACCT_ENABLED;
	if (FUNC5(mp))
		state->s_state[USRQUOTA].flags |= QCI_LIMITS_ENFORCED;
	if (FUNC1(mp))
		state->s_state[GRPQUOTA].flags |= QCI_ACCT_ENABLED;
	if (FUNC0(mp))
		state->s_state[GRPQUOTA].flags |= QCI_LIMITS_ENFORCED;
	if (FUNC3(mp))
		state->s_state[PRJQUOTA].flags |= QCI_ACCT_ENABLED;
	if (FUNC2(mp))
		state->s_state[PRJQUOTA].flags |= QCI_LIMITS_ENFORCED;

	FUNC9(&state->s_state[USRQUOTA], mp, q->qi_uquotaip,
			  mp->m_sb.sb_uquotino);
	FUNC9(&state->s_state[GRPQUOTA], mp, q->qi_gquotaip,
			  mp->m_sb.sb_gquotino);
	FUNC9(&state->s_state[PRJQUOTA], mp, q->qi_pquotaip,
			  mp->m_sb.sb_pquotino);
	return 0;
}