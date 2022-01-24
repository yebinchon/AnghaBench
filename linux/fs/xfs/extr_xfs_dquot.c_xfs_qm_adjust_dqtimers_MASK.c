#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* m_quotainfo; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_8__ {int d_id; void* d_rtbtimer; scalar_t__ d_rtb_hardlimit; scalar_t__ d_rtbcount; scalar_t__ d_rtb_softlimit; scalar_t__ d_rtbwarns; void* d_itimer; scalar_t__ d_ino_hardlimit; scalar_t__ d_icount; scalar_t__ d_ino_softlimit; scalar_t__ d_iwarns; void* d_btimer; scalar_t__ d_blk_hardlimit; scalar_t__ d_bcount; scalar_t__ d_blk_softlimit; scalar_t__ d_bwarns; } ;
typedef  TYPE_3__ xfs_disk_dquot_t ;
struct TYPE_6__ {scalar_t__ qi_rtbtimelimit; scalar_t__ qi_itimelimit; scalar_t__ qi_btimelimit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 

void
FUNC4(
	xfs_mount_t		*mp,
	xfs_disk_dquot_t	*d)
{
	FUNC0(d->d_id);

#ifdef DEBUG
	if (d->d_blk_hardlimit)
		ASSERT(be64_to_cpu(d->d_blk_softlimit) <=
		       be64_to_cpu(d->d_blk_hardlimit));
	if (d->d_ino_hardlimit)
		ASSERT(be64_to_cpu(d->d_ino_softlimit) <=
		       be64_to_cpu(d->d_ino_hardlimit));
	if (d->d_rtb_hardlimit)
		ASSERT(be64_to_cpu(d->d_rtb_softlimit) <=
		       be64_to_cpu(d->d_rtb_hardlimit));
#endif

	if (!d->d_btimer) {
		if ((d->d_blk_softlimit &&
		     (FUNC1(d->d_bcount) >
		      FUNC1(d->d_blk_softlimit))) ||
		    (d->d_blk_hardlimit &&
		     (FUNC1(d->d_bcount) >
		      FUNC1(d->d_blk_hardlimit)))) {
			d->d_btimer = FUNC2(FUNC3() +
					mp->m_quotainfo->qi_btimelimit);
		} else {
			d->d_bwarns = 0;
		}
	} else {
		if ((!d->d_blk_softlimit ||
		     (FUNC1(d->d_bcount) <=
		      FUNC1(d->d_blk_softlimit))) &&
		    (!d->d_blk_hardlimit ||
		    (FUNC1(d->d_bcount) <=
		     FUNC1(d->d_blk_hardlimit)))) {
			d->d_btimer = 0;
		}
	}

	if (!d->d_itimer) {
		if ((d->d_ino_softlimit &&
		     (FUNC1(d->d_icount) >
		      FUNC1(d->d_ino_softlimit))) ||
		    (d->d_ino_hardlimit &&
		     (FUNC1(d->d_icount) >
		      FUNC1(d->d_ino_hardlimit)))) {
			d->d_itimer = FUNC2(FUNC3() +
					mp->m_quotainfo->qi_itimelimit);
		} else {
			d->d_iwarns = 0;
		}
	} else {
		if ((!d->d_ino_softlimit ||
		     (FUNC1(d->d_icount) <=
		      FUNC1(d->d_ino_softlimit)))  &&
		    (!d->d_ino_hardlimit ||
		     (FUNC1(d->d_icount) <=
		      FUNC1(d->d_ino_hardlimit)))) {
			d->d_itimer = 0;
		}
	}

	if (!d->d_rtbtimer) {
		if ((d->d_rtb_softlimit &&
		     (FUNC1(d->d_rtbcount) >
		      FUNC1(d->d_rtb_softlimit))) ||
		    (d->d_rtb_hardlimit &&
		     (FUNC1(d->d_rtbcount) >
		      FUNC1(d->d_rtb_hardlimit)))) {
			d->d_rtbtimer = FUNC2(FUNC3() +
					mp->m_quotainfo->qi_rtbtimelimit);
		} else {
			d->d_rtbwarns = 0;
		}
	} else {
		if ((!d->d_rtb_softlimit ||
		     (FUNC1(d->d_rtbcount) <=
		      FUNC1(d->d_rtb_softlimit))) &&
		    (!d->d_rtb_hardlimit ||
		     (FUNC1(d->d_rtbcount) <=
		      FUNC1(d->d_rtb_hardlimit)))) {
			d->d_rtbtimer = 0;
		}
	}
}