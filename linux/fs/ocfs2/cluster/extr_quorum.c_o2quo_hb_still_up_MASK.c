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
struct o2quo_state {int qs_pending; int /*<<< orphan*/  qs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct o2quo_state*,int /*<<< orphan*/ ) ; 
 struct o2quo_state o2quo_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(u8 node)
{
	struct o2quo_state *qs = &o2quo_state;

	FUNC2(&qs->qs_lock);

	FUNC0(0, "node %u\n", node);

	qs->qs_pending = 1;
	FUNC1(qs, node);

	FUNC3(&qs->qs_lock);
}