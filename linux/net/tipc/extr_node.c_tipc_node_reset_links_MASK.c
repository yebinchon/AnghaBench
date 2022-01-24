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
struct tipc_node {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int MAX_BEARERS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_node*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_node*,int,char*) ; 

__attribute__((used)) static void FUNC3(struct tipc_node *n)
{
	int i;

	FUNC0("Resetting all links to %x\n", n->addr);

	FUNC2(n, true, " ");
	for (i = 0; i < MAX_BEARERS; i++) {
		FUNC1(n, i, false);
	}
}