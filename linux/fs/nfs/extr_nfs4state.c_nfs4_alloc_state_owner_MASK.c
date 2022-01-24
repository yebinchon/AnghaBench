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
struct nfs_server {int /*<<< orphan*/  openowner_id; } ;
struct TYPE_2__ {scalar_t__ owner_id; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_delegreturn_mutex; int /*<<< orphan*/  so_reclaim_seqcount; int /*<<< orphan*/  so_lru; int /*<<< orphan*/  so_count; TYPE_1__ so_seqid; int /*<<< orphan*/  so_states; int /*<<< orphan*/  so_lock; int /*<<< orphan*/  so_cred; struct nfs_server* so_server; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_state_owner*) ; 
 struct nfs4_state_owner* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_state_owner *
FUNC10(struct nfs_server *server,
		const struct cred *cred,
		gfp_t gfp_flags)
{
	struct nfs4_state_owner *sp;

	sp = FUNC5(sizeof(*sp), gfp_flags);
	if (!sp)
		return NULL;
	sp->so_seqid.owner_id = FUNC3(&server->openowner_id, 0, 0,
						gfp_flags);
	if (sp->so_seqid.owner_id < 0) {
		FUNC4(sp);
		return NULL;
	}
	sp->so_server = server;
	sp->so_cred = FUNC2(cred);
	FUNC9(&sp->so_lock);
	FUNC0(&sp->so_states);
	FUNC7(&sp->so_seqid);
	FUNC1(&sp->so_count, 1);
	FUNC0(&sp->so_lru);
	FUNC8(&sp->so_reclaim_seqcount);
	FUNC6(&sp->so_delegreturn_mutex);
	return sp;
}