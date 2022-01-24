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
struct nfs_server {int /*<<< orphan*/  lockowner_id; } ;
struct nfs4_state {TYPE_1__* owner; } ;
struct TYPE_4__ {scalar_t__ owner_id; } ;
struct nfs4_lock_state {int /*<<< orphan*/  ls_locks; TYPE_2__ ls_seqid; int /*<<< orphan*/  ls_owner; struct nfs4_state* ls_state; int /*<<< orphan*/  ls_count; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_3__ {struct nfs_server* so_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_lock_state*) ; 
 struct nfs4_lock_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct nfs4_lock_state *FUNC6(struct nfs4_state *state, fl_owner_t fl_owner)
{
	struct nfs4_lock_state *lsp;
	struct nfs_server *server = state->owner->so_server;

	lsp = FUNC3(sizeof(*lsp), GFP_NOFS);
	if (lsp == NULL)
		return NULL;
	FUNC4(&lsp->ls_seqid);
	FUNC5(&lsp->ls_count, 1);
	lsp->ls_state = state;
	lsp->ls_owner = fl_owner;
	lsp->ls_seqid.owner_id = FUNC1(&server->lockowner_id, 0, 0, GFP_NOFS);
	if (lsp->ls_seqid.owner_id < 0)
		goto out_free;
	FUNC0(&lsp->ls_locks);
	return lsp;
out_free:
	FUNC2(lsp);
	return NULL;
}