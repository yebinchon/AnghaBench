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
struct timer_list {int dummy; } ;
struct dn_route {int /*<<< orphan*/  dst; int /*<<< orphan*/  dn_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int dn_rt_hash_mask ; 
 TYPE_1__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dn_route* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dn_route* FUNC6 (struct dn_route**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *unused)
{
	int i;
	struct dn_route *rt, *next;

	for (i = 0; i < dn_rt_hash_mask; i++) {
		FUNC4(&dn_rt_hash_table[i].lock);

		if ((rt = FUNC6((struct dn_route **)&dn_rt_hash_table[i].chain, NULL)) == NULL)
			goto nothing_to_declare;

		for(; rt; rt = next) {
			next = FUNC3(rt->dn_next);
			FUNC0(rt->dn_next, NULL);
			FUNC1(&rt->dst);
			FUNC2(&rt->dst);
		}

nothing_to_declare:
		FUNC5(&dn_rt_hash_table[i].lock);
	}
}