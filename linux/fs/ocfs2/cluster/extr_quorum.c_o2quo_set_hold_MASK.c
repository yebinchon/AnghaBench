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
typedef  int /*<<< orphan*/  u8 ;
struct o2quo_state {scalar_t__ qs_holds; int /*<<< orphan*/  qs_hold_bm; int /*<<< orphan*/  qs_lock; } ;

/* Variables and functions */
 scalar_t__ O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct o2quo_state *qs, u8 node)
{
	FUNC0(&qs->qs_lock);

	if (!FUNC3(node, qs->qs_hold_bm)) {
		qs->qs_holds++;
		FUNC2(qs->qs_holds == O2NM_MAX_NODES,
			        "node %u\n", node);
		FUNC1(0, "node %u, %d total\n", node, qs->qs_holds);
	}
}