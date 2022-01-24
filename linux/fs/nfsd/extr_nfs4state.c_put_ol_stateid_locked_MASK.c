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
struct TYPE_3__ {int /*<<< orphan*/  so_id; } ;
struct TYPE_4__ {TYPE_1__ si_opaque; } ;
struct nfs4_stid {TYPE_2__ sc_stateid; int /*<<< orphan*/  sc_count; struct nfs4_client* sc_client; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_locks; struct nfs4_stid st_stid; } ;
struct nfs4_client {int /*<<< orphan*/  cl_stateids; int /*<<< orphan*/  cl_lock; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  close_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct nfs4_ol_stateid *stp,
				       struct list_head *reaplist)
{
	struct nfs4_stid *s = &stp->st_stid;
	struct nfs4_client *clp = s->sc_client;

	FUNC4(&clp->cl_lock);

	FUNC0(!FUNC3(&stp->st_locks));

	if (!FUNC5(&s->sc_count)) {
		FUNC6(&close_wq);
		return;
	}

	FUNC1(&clp->cl_stateids, s->sc_stateid.si_opaque.so_id);
	FUNC2(&stp->st_locks, reaplist);
}