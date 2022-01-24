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
struct uncached_list {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct rtable {int /*<<< orphan*/  rt_uncached; struct uncached_list* rt_uncached_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct uncached_list* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt_uncached_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct rtable *rt)
{
	struct uncached_list *ul = FUNC1(&rt_uncached_list);

	rt->rt_uncached_list = ul;

	FUNC2(&ul->lock);
	FUNC0(&rt->rt_uncached, &ul->head);
	FUNC3(&ul->lock);
}