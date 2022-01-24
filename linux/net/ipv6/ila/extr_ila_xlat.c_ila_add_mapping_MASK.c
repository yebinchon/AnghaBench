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
struct net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  locator_match; } ;
struct ila_xlat_params {TYPE_2__ ip; } ;
struct TYPE_3__ {int hooks_registered; int /*<<< orphan*/  rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;
struct ila_map {int /*<<< orphan*/  node; int /*<<< orphan*/  next; struct ila_xlat_params xp; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ila_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct ila_map*,struct ila_xlat_params*) ; 
 int /*<<< orphan*/ * FUNC3 (struct ila_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ila_net_id ; 
 int /*<<< orphan*/  ila_nf_hook_ops ; 
 int FUNC5 (struct ila_map*) ; 
 int /*<<< orphan*/  FUNC6 (struct ila_map*) ; 
 struct ila_map* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ila_net* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ila_map*) ; 
 struct ila_map* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ila_map* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rht_params ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct net *net, struct ila_xlat_params *xp)
{
	struct ila_net *ilan = FUNC9(net, ila_net_id);
	struct ila_map *ila, *head;
	spinlock_t *lock = FUNC3(ilan, xp->ip.locator_match);
	int err = 0, order;

	if (!ilan->xlat.hooks_registered) {
		/* We defer registering net hooks in the namespace until the
		 * first mapping is added.
		 */
		err = FUNC10(net, ila_nf_hook_ops,
					    FUNC0(ila_nf_hook_ops));
		if (err)
			return err;

		ilan->xlat.hooks_registered = true;
	}

	ila = FUNC7(sizeof(*ila), GFP_KERNEL);
	if (!ila)
		return -ENOMEM;

	FUNC4(&xp->ip);

	ila->xp = *xp;

	order = FUNC5(ila);

	FUNC16(lock);

	head = FUNC13(&ilan->xlat.rhash_table,
				      &xp->ip.locator_match,
				      rht_params);
	if (!head) {
		/* New entry for the rhash_table */
		err = FUNC14(&ilan->xlat.rhash_table,
						    &ila->node, rht_params);
	} else {
		struct ila_map *tila = head, *prev = NULL;

		do {
			if (!FUNC2(tila, xp)) {
				err = -EEXIST;
				goto out;
			}

			if (order > FUNC5(tila))
				break;

			prev = tila;
			tila = FUNC12(tila->next,
				FUNC8(lock));
		} while (tila);

		if (prev) {
			/* Insert in sub list of head */
			FUNC1(ila->next, tila);
			FUNC11(prev->next, ila);
		} else {
			/* Make this ila new head */
			FUNC1(ila->next, head);
			err = FUNC15(&ilan->xlat.rhash_table,
						      &head->node,
						      &ila->node, rht_params);
			if (err)
				goto out;
		}
	}

out:
	FUNC17(lock);

	if (err)
		FUNC6(ila);

	return err;
}