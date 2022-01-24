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
struct o2quo_state {scalar_t__ qs_heartbeating; int /*<<< orphan*/  qs_lock; int /*<<< orphan*/  qs_hb_bm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct o2quo_state*,int /*<<< orphan*/ ) ; 
 struct o2quo_state o2quo_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(u8 node)
{
	struct o2quo_state *qs = &o2quo_state;

	FUNC4(&qs->qs_lock);

	qs->qs_heartbeating--;
	FUNC2(qs->qs_heartbeating < 0,
			"node %u, %d heartbeating\n",
			node, qs->qs_heartbeating);
	FUNC2(!FUNC6(node, qs->qs_hb_bm), "node %u\n", node);
	FUNC0(node, qs->qs_hb_bm);

	FUNC1(0, "node %u, %d total\n", node, qs->qs_heartbeating);

	FUNC3(qs, node);

	FUNC5(&qs->qs_lock);
}