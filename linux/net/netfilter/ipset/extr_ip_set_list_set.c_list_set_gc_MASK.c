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
struct TYPE_2__ {scalar_t__ expires; } ;
struct list_set {TYPE_1__ gc; struct ip_set* set; } ;
struct ip_set {int /*<<< orphan*/  timeout; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct list_set* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gc ; 
 scalar_t__ jiffies ; 
 struct list_set* map ; 
 int /*<<< orphan*/  FUNC3 (struct ip_set*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct timer_list *t)
{
	struct list_set *map = FUNC2(map, t, gc);
	struct ip_set *set = map->set;

	FUNC4(&set->lock);
	FUNC3(set);
	FUNC5(&set->lock);

	map->gc.expires = jiffies + FUNC0(set->timeout) * HZ;
	FUNC1(&map->gc);
}