#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfs4_state_owner {int /*<<< orphan*/  so_lock; } ;
struct nfs4_state {int /*<<< orphan*/  open_states; int /*<<< orphan*/  inode_states; int /*<<< orphan*/  count; struct nfs4_state_owner* owner; struct inode* inode; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct nfs4_state *state)
{
	struct inode *inode = state->inode;
	struct nfs4_state_owner *owner = state->owner;

	if (!FUNC5(&state->count, &owner->so_lock))
		return;
	FUNC6(&inode->i_lock);
	FUNC2(&state->inode_states);
	FUNC1(&state->open_states);
	FUNC7(&inode->i_lock);
	FUNC7(&owner->so_lock);
	FUNC0(inode);
	FUNC3(state);
	FUNC4(owner);
}