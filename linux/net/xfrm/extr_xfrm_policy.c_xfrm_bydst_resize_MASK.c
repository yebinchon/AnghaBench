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
struct TYPE_4__ {int /*<<< orphan*/  xfrm_policy_lock; TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct hlist_head {int dummy; } ;
struct TYPE_3__ {unsigned int hmask; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hlist_head*) ; 
 struct hlist_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct hlist_head*,struct hlist_head*,unsigned int,int) ; 
 struct hlist_head* FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct hlist_head*,unsigned int) ; 
 unsigned int FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  xfrm_policy_hash_generation ; 

__attribute__((used)) static void FUNC12(struct net *net, int dir)
{
	unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;
	unsigned int nhashmask = FUNC11(hmask);
	unsigned int nsize = (nhashmask + 1) * sizeof(struct hlist_head);
	struct hlist_head *ndst = FUNC9(nsize);
	struct hlist_head *odst;
	int i;

	if (!ndst)
		return;

	FUNC3(&net->xfrm.xfrm_policy_lock);
	FUNC6(&xfrm_policy_hash_generation);

	odst = FUNC2(net->xfrm.policy_bydst[dir].table,
				FUNC0(&net->xfrm.xfrm_policy_lock));

	for (i = hmask; i >= 0; i--)
		FUNC8(net, odst + i, ndst, nhashmask, dir);

	FUNC1(net->xfrm.policy_bydst[dir].table, ndst);
	net->xfrm.policy_bydst[dir].hmask = nhashmask;

	FUNC7(&xfrm_policy_hash_generation);
	FUNC4(&net->xfrm.xfrm_policy_lock);

	FUNC5();

	FUNC10(odst, (hmask + 1) * sizeof(struct hlist_head));
}