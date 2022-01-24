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
struct hlist_node {int dummy; } ;
typedef  enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;

/* Variables and functions */
 int FUNC0 (int,struct hlist_node*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(enum cpuhp_state state, struct hlist_node *node,
			       bool invoke)
{
	int ret;

	FUNC1();
	ret = FUNC0(state, node, invoke);
	FUNC2();
	return ret;
}