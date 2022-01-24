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
struct xfs_quotainfo {int dummy; } ;
struct xfs_mount {struct xfs_quotainfo* m_quotainfo; } ;
struct xfs_disk_dquot {void* d_rtb_hardlimit; void* d_rtb_softlimit; void* d_ino_hardlimit; void* d_ino_softlimit; void* d_blk_hardlimit; void* d_blk_softlimit; int /*<<< orphan*/  d_id; } ;
struct xfs_dquot {struct xfs_disk_dquot q_core; } ;
struct xfs_def_quota {scalar_t__ rtbhardlimit; scalar_t__ rtbsoftlimit; scalar_t__ ihardlimit; scalar_t__ isoftlimit; scalar_t__ bhardlimit; scalar_t__ bsoftlimit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_dquot*) ; 
 struct xfs_def_quota* FUNC3 (struct xfs_dquot*,struct xfs_quotainfo*) ; 

void
FUNC4(
	struct xfs_mount	*mp,
	struct xfs_dquot	*dq)
{
	struct xfs_quotainfo	*q = mp->m_quotainfo;
	struct xfs_disk_dquot	*d = &dq->q_core;
	struct xfs_def_quota	*defq;
	int			prealloc = 0;

	FUNC0(d->d_id);
	defq = FUNC3(dq, q);

	if (defq->bsoftlimit && !d->d_blk_softlimit) {
		d->d_blk_softlimit = FUNC1(defq->bsoftlimit);
		prealloc = 1;
	}
	if (defq->bhardlimit && !d->d_blk_hardlimit) {
		d->d_blk_hardlimit = FUNC1(defq->bhardlimit);
		prealloc = 1;
	}
	if (defq->isoftlimit && !d->d_ino_softlimit)
		d->d_ino_softlimit = FUNC1(defq->isoftlimit);
	if (defq->ihardlimit && !d->d_ino_hardlimit)
		d->d_ino_hardlimit = FUNC1(defq->ihardlimit);
	if (defq->rtbsoftlimit && !d->d_rtb_softlimit)
		d->d_rtb_softlimit = FUNC1(defq->rtbsoftlimit);
	if (defq->rtbhardlimit && !d->d_rtb_hardlimit)
		d->d_rtb_hardlimit = FUNC1(defq->rtbhardlimit);

	if (prealloc)
		FUNC2(dq);
}