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
struct nfs_client {int dummy; } ;
struct nfs4_state {scalar_t__ n_rdwr; int /*<<< orphan*/  flags; scalar_t__ n_wronly; scalar_t__ n_rdonly; TYPE_2__* owner; } ;
struct TYPE_4__ {TYPE_1__* so_server; } ;
struct TYPE_3__ {struct nfs_client* nfs_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_O_RDONLY_STATE ; 
 int /*<<< orphan*/  NFS_O_RDWR_STATE ; 
 int /*<<< orphan*/  NFS_O_WRONLY_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_client*,struct nfs4_state*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfs4_state *state)
{
	struct nfs_client *clp = state->owner->so_server->nfs_client;
	bool need_recover = false;

	if (FUNC1(NFS_O_RDONLY_STATE, &state->flags) && state->n_rdonly)
		need_recover = true;
	if (FUNC1(NFS_O_WRONLY_STATE, &state->flags) && state->n_wronly)
		need_recover = true;
	if (FUNC1(NFS_O_RDWR_STATE, &state->flags) && state->n_rdwr)
		need_recover = true;
	if (need_recover)
		FUNC0(clp, state);
}