#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nfs4_state {int /*<<< orphan*/  state_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  seqid; } ;
struct nfs4_lock_state {TYPE_4__ ls_stateid; struct nfs4_state* ls_state; } ;
struct TYPE_8__ {int /*<<< orphan*/  seqid; } ;
typedef  TYPE_1__ nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(nfs4_stateid *dst,
		struct nfs4_lock_state *lsp)
{
	struct nfs4_state *state = lsp->ls_state;
	bool ret = false;

	FUNC3(&state->state_lock);
	if (!FUNC1(dst, &lsp->ls_stateid))
		goto out;
	if (!FUNC0(&lsp->ls_stateid, dst))
		FUNC2(dst);
	else
		dst->seqid = lsp->ls_stateid.seqid;
	ret = true;
out:
	FUNC4(&state->state_lock);
	return ret;
}