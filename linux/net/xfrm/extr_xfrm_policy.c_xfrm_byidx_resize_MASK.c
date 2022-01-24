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
struct TYPE_2__ {unsigned int policy_idx_hmask; int /*<<< orphan*/  xfrm_policy_lock; struct hlist_head* policy_byidx; } ;
struct net {TYPE_1__ xfrm; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hlist_head* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hlist_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hlist_head*,struct hlist_head*,unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 

__attribute__((used)) static void FUNC6(struct net *net, int total)
{
	unsigned int hmask = net->xfrm.policy_idx_hmask;
	unsigned int nhashmask = FUNC5(hmask);
	unsigned int nsize = (nhashmask + 1) * sizeof(struct hlist_head);
	struct hlist_head *oidx = net->xfrm.policy_byidx;
	struct hlist_head *nidx = FUNC2(nsize);
	int i;

	if (!nidx)
		return;

	FUNC0(&net->xfrm.xfrm_policy_lock);

	for (i = hmask; i >= 0; i--)
		FUNC4(oidx + i, nidx, nhashmask);

	net->xfrm.policy_byidx = nidx;
	net->xfrm.policy_idx_hmask = nhashmask;

	FUNC1(&net->xfrm.xfrm_policy_lock);

	FUNC3(oidx, (hmask + 1) * sizeof(struct hlist_head));
}