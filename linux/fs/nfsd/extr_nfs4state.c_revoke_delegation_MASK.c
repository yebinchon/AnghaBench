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
struct TYPE_2__ {int /*<<< orphan*/  sc_count; int /*<<< orphan*/  sc_type; struct nfs4_client* sc_client; } ;
struct nfs4_delegation {int /*<<< orphan*/  dl_recall_lru; TYPE_1__ dl_stid; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_revoked; scalar_t__ cl_minorversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_REVOKED_DELEG_STID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_delegation*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nfs4_delegation *dp)
{
	struct nfs4_client *clp = dp->dl_stid.sc_client;

	FUNC0(!FUNC3(&dp->dl_recall_lru));

	if (clp->cl_minorversion) {
		dp->dl_stid.sc_type = NFS4_REVOKED_DELEG_STID;
		FUNC4(&dp->dl_stid.sc_count);
		FUNC5(&clp->cl_lock);
		FUNC2(&dp->dl_recall_lru, &clp->cl_revoked);
		FUNC6(&clp->cl_lock);
	}
	FUNC1(dp);
}