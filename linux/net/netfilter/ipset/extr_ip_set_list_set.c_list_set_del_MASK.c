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
struct set_elem {int /*<<< orphan*/  rcu; int /*<<< orphan*/  id; int /*<<< orphan*/  list; } ;
struct list_set {int /*<<< orphan*/  net; } ;
struct ip_set {int /*<<< orphan*/  elements; struct list_set* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  __list_set_del_rcu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct ip_set *set, struct set_elem *e)
{
	struct list_set *map = set->data;

	set->elements--;
	FUNC2(&e->list);
	FUNC1(map->net, e->id);
	FUNC0(&e->rcu, __list_set_del_rcu);
}