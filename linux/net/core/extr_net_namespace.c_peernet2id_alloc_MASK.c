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
struct net {int /*<<< orphan*/  nsid_lock; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int NETNSA_NSID_NOT_ASSIGNED ; 
 int /*<<< orphan*/  RTM_NEWNSID ; 
 int FUNC0 (struct net*,struct net*,int*) ; 
 scalar_t__ FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct net *net, struct net *peer, gfp_t gfp)
{
	bool alloc = false, alive = false;
	int id;

	if (FUNC3(&net->count) == 0)
		return NETNSA_NSID_NOT_ASSIGNED;
	FUNC5(&net->nsid_lock);
	/*
	 * When peer is obtained from RCU lists, we may race with
	 * its cleanup. Check whether it's alive, and this guarantees
	 * we never hash a peer back to net->netns_ids, after it has
	 * just been idr_remove()'d from there in cleanup_net().
	 */
	if (FUNC1(peer))
		alive = alloc = true;
	id = FUNC0(net, peer, &alloc);
	FUNC6(&net->nsid_lock);
	if (alloc && id >= 0)
		FUNC4(net, RTM_NEWNSID, id, 0, NULL, gfp);
	if (alive)
		FUNC2(peer);
	return id;
}