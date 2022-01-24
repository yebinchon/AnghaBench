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
struct nfs_inode {int /*<<< orphan*/  open_states; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_lock; int /*<<< orphan*/  so_states; int /*<<< orphan*/  so_count; } ;
struct nfs4_state {int /*<<< orphan*/  open_states; struct inode* inode; int /*<<< orphan*/  inode_states; struct nfs4_state_owner* owner; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 struct nfs4_state* FUNC1 (struct inode*,struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfs4_state* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_state*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct nfs4_state *
FUNC12(struct inode *inode, struct nfs4_state_owner *owner)
{
	struct nfs4_state *state, *new;
	struct nfs_inode *nfsi = FUNC0(inode);

	FUNC8();
	state = FUNC1(inode, owner);
	FUNC9();
	if (state)
		goto out;
	new = FUNC6();
	FUNC10(&owner->so_lock);
	FUNC10(&inode->i_lock);
	state = FUNC1(inode, owner);
	if (state == NULL && new != NULL) {
		state = new;
		state->owner = owner;
		FUNC2(&owner->so_count);
		FUNC4(&state->inode_states, &nfsi->open_states);
		FUNC3(inode);
		state->inode = inode;
		FUNC11(&inode->i_lock);
		/* Note: The reclaim code dictates that we add stateless
		 * and read-only stateids to the end of the list */
		FUNC5(&state->open_states, &owner->so_states);
		FUNC11(&owner->so_lock);
	} else {
		FUNC11(&inode->i_lock);
		FUNC11(&owner->so_lock);
		if (new)
			FUNC7(new);
	}
out:
	return state;
}