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
struct tipc_node {unsigned long keepalive_intv; } ;
struct tipc_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_link*,unsigned long) ; 
 unsigned long FUNC1 (struct tipc_link*) ; 

__attribute__((used)) static void FUNC2(struct tipc_node *n, struct tipc_link *l)
{
	unsigned long tol = FUNC1(l);
	unsigned long intv = ((tol / 4) > 500) ? 500 : tol / 4;

	/* Link with lowest tolerance determines timer interval */
	if (intv < n->keepalive_intv)
		n->keepalive_intv = intv;

	/* Ensure link's abort limit corresponds to current tolerance */
	FUNC0(l, tol / n->keepalive_intv);
}