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
struct nfs_server {int /*<<< orphan*/  lockowner_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner_id; } ;
struct nfs4_lock_state {TYPE_1__ ls_seqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_lock_state*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct nfs_server *server, struct nfs4_lock_state *lsp)
{
	FUNC0(&server->lockowner_id, lsp->ls_seqid.owner_id);
	FUNC2(&lsp->ls_seqid);
	FUNC1(lsp);
}