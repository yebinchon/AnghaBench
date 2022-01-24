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
typedef  scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct mtype {scalar_t__ elements; TYPE_1__ gc; int /*<<< orphan*/  members; struct ip_set* set; } ;
struct ip_set {int /*<<< orphan*/  timeout; int /*<<< orphan*/  lock; int /*<<< orphan*/  elements; int /*<<< orphan*/  dsize; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct ip_set*) ; 
 struct mtype* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc ; 
 void* FUNC5 (struct ip_set*,struct mtype*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_set*,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct mtype* map ; 
 scalar_t__ FUNC8 (scalar_t__,struct mtype*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct timer_list *t)
{
	struct mtype *map = FUNC4(map, t, gc);
	struct ip_set *set = map->set;
	void *x;
	u32 id;

	/* We run parallel with other readers (test element)
	 * but adding/deleting new entries is locked out
	 */
	FUNC9(&set->lock);
	for (id = 0; id < map->elements; id++)
		if (FUNC8(id, map, set->dsize)) {
			x = FUNC5(set, map, id);
			if (FUNC7(FUNC3(x, set))) {
				FUNC2(id, map->members);
				FUNC6(set, x);
				set->elements--;
			}
		}
	FUNC10(&set->lock);

	map->gc.expires = jiffies + FUNC0(set->timeout) * HZ;
	FUNC1(&map->gc);
}