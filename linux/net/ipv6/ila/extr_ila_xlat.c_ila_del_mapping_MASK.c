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
struct TYPE_3__ {int /*<<< orphan*/  locator_match; } ;
struct ila_xlat_params {TYPE_1__ ip; } ;
struct TYPE_4__ {int /*<<< orphan*/  rhash_table; } ;
struct ila_net {TYPE_2__ xlat; } ;
struct ila_map {int /*<<< orphan*/  node; int /*<<< orphan*/  next; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ila_map*,struct ila_xlat_params*) ; 
 int /*<<< orphan*/ * FUNC1 (struct ila_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ila_net_id ; 
 int /*<<< orphan*/  FUNC2 (struct ila_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ila_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ila_map* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ila_map* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rht_params ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct net *net, struct ila_xlat_params *xp)
{
	struct ila_net *ilan = FUNC4(net, ila_net_id);
	struct ila_map *ila, *head, *prev;
	spinlock_t *lock = FUNC1(ilan, xp->ip.locator_match);
	int err = -ENOENT;

	FUNC10(lock);

	head = FUNC7(&ilan->xlat.rhash_table,
				      &xp->ip.locator_match, rht_params);
	ila = head;

	prev = NULL;

	while (ila) {
		if (FUNC0(ila, xp)) {
			prev = ila;
			ila = FUNC6(ila->next,
							FUNC3(lock));
			continue;
		}

		err = 0;

		if (prev) {
			/* Not head, just delete from list */
			FUNC5(prev->next, ila->next);
		} else {
			/* It is the head. If there is something in the
			 * sublist we need to make a new head.
			 */
			head = FUNC6(ila->next,
							 FUNC3(lock));
			if (head) {
				/* Put first entry in the sublist into the
				 * table
				 */
				err = FUNC9(
					&ilan->xlat.rhash_table, &ila->node,
					&head->node, rht_params);
				if (err)
					goto out;
			} else {
				/* Entry no longer used */
				err = FUNC8(
						&ilan->xlat.rhash_table,
						&ila->node, rht_params);
			}
		}

		FUNC2(ila);

		break;
	}

out:
	FUNC11(lock);

	return err;
}