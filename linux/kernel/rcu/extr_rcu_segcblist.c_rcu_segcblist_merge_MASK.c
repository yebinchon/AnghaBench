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
struct rcu_segcblist {int dummy; } ;
struct rcu_cblist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcu_cblist*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_segcblist*,struct rcu_cblist*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_segcblist*,struct rcu_cblist*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcu_segcblist*,struct rcu_cblist*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcu_segcblist*) ; 
 int /*<<< orphan*/  FUNC5 (struct rcu_segcblist*,struct rcu_cblist*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcu_segcblist*,struct rcu_cblist*) ; 
 int /*<<< orphan*/  FUNC7 (struct rcu_segcblist*,struct rcu_cblist*) ; 

void FUNC8(struct rcu_segcblist *dst_rsclp,
			 struct rcu_segcblist *src_rsclp)
{
	struct rcu_cblist donecbs;
	struct rcu_cblist pendcbs;

	FUNC0(&donecbs);
	FUNC0(&pendcbs);
	FUNC1(src_rsclp, &donecbs);
	FUNC2(src_rsclp, &donecbs);
	FUNC3(src_rsclp, &pendcbs);
	FUNC5(dst_rsclp, &donecbs);
	FUNC6(dst_rsclp, &donecbs);
	FUNC7(dst_rsclp, &pendcbs);
	FUNC4(src_rsclp);
}