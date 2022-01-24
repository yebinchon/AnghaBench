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
struct nfs4_file {int /*<<< orphan*/  fi_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_type; struct nfs4_file* sc_file; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_perfile; int /*<<< orphan*/  dl_recall_lru; int /*<<< orphan*/  dl_perclnt; int /*<<< orphan*/  dl_time; TYPE_1__ dl_stid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_CLOSED_DELEG_STID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_lock ; 

__attribute__((used)) static bool
FUNC5(struct nfs4_delegation *dp)
{
	struct nfs4_file *fp = dp->dl_stid.sc_file;

	FUNC2(&state_lock);

	if (FUNC1(&dp->dl_perfile))
		return false;

	dp->dl_stid.sc_type = NFS4_CLOSED_DELEG_STID;
	/* Ensure that deleg break won't try to requeue it */
	++dp->dl_time;
	FUNC3(&fp->fi_lock);
	FUNC0(&dp->dl_perclnt);
	FUNC0(&dp->dl_recall_lru);
	FUNC0(&dp->dl_perfile);
	FUNC4(&fp->fi_lock);
	return true;
}