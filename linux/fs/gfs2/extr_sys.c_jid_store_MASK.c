#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ls_jid; TYPE_1__* ls_ops; } ;
struct TYPE_5__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_jindex_spin; int /*<<< orphan*/  sd_flags; TYPE_3__ sd_lockstruct; TYPE_2__ sd_args; int /*<<< orphan*/  sd_locking_init; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/ * lm_mount; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SDF_NOJOURNALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct gfs2_sbd *sdp, const char *buf, size_t len)
{
        int jid;
	int rv;

	rv = FUNC4(buf, "%d", &jid);
	if (rv != 1)
		return -EINVAL;
	rv = FUNC6(&sdp->sd_locking_init);
	if (rv)
		return rv;
	FUNC2(&sdp->sd_jindex_spin);
	rv = -EINVAL;
	if (sdp->sd_lockstruct.ls_ops->lm_mount == NULL)
		goto out;
	rv = -EBUSY;
	if (FUNC5(SDF_NOJOURNALID, &sdp->sd_flags) == 0)
		goto out;
	rv = 0;
	if (sdp->sd_args.ar_spectator && jid > 0)
		rv = jid = -EINVAL;
	sdp->sd_lockstruct.ls_jid = jid;
	FUNC0(SDF_NOJOURNALID, &sdp->sd_flags);
	FUNC1();
	FUNC7(&sdp->sd_flags, SDF_NOJOURNALID);
out:
	FUNC3(&sdp->sd_jindex_spin);
	return rv ? rv : len;
}