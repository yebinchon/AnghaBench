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
struct xfs_trans_res {int tr_logcount; int /*<<< orphan*/  tr_logres; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int sb_logsunit; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;

/* Variables and functions */
 int BBSIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct xfs_mount*,int) ; 
 int XFS_MIN_LOG_FACTOR ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,struct xfs_trans_res*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

int
FUNC6(
	struct xfs_mount	*mp)
{
	struct xfs_trans_res	tres = {0};
	int			max_logres;
	int			min_logblks = 0;
	int			lsunit = 0;

	FUNC4(mp, &tres);

	max_logres = FUNC3(mp, tres.tr_logres);
	if (tres.tr_logcount > 1)
		max_logres *= tres.tr_logcount;

	if (FUNC5(&mp->m_sb) && mp->m_sb.sb_logsunit > 1)
		lsunit = FUNC0(mp->m_sb.sb_logsunit);

	/*
	 * Two factors should be taken into account for calculating the minimum
	 * log space.
	 * 1) The fundamental limitation is that no single transaction can be
	 *    larger than half size of the log.
	 *
	 *    From mkfs.xfs, this is considered by the XFS_MIN_LOG_FACTOR
	 *    define, which is set to 3. That means we can definitely fit
	 *    maximally sized 2 transactions in the log. We'll use this same
	 *    value here.
	 *
	 * 2) If the lsunit option is specified, a transaction requires 2 LSU
	 *    for the reservation because there are two log writes that can
	 *    require padding - the transaction data and the commit record which
	 *    are written separately and both can require padding to the LSU.
	 *    Consider that we can have an active CIL reservation holding 2*LSU,
	 *    but the CIL is not over a push threshold, in this case, if we
	 *    don't have enough log space for at one new transaction, which
	 *    includes another 2*LSU in the reservation, we will run into dead
	 *    loop situation in log space grant procedure. i.e.
	 *    xlog_grant_head_wait().
	 *
	 *    Hence the log size needs to be able to contain two maximally sized
	 *    and padded transactions, which is (2 * (2 * LSU + maxlres)).
	 *
	 * Also, the log size should be a multiple of the log stripe unit, round
	 * it up to lsunit boundary if lsunit is specified.
	 */
	if (lsunit) {
		min_logblks = FUNC2(FUNC0(max_logres), lsunit) +
			      2 * lsunit;
	} else
		min_logblks = FUNC0(max_logres) + 2 * BBSIZE;
	min_logblks *= XFS_MIN_LOG_FACTOR;

	return FUNC1(mp, min_logblks);
}