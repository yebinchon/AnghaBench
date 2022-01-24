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
struct timer_list {int dummy; } ;
struct tid_ampdu_rx {int /*<<< orphan*/  tid; int /*<<< orphan*/  sta; } ;

/* Variables and functions */
 struct tid_ampdu_rx* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  reorder_timer ; 
 struct tid_ampdu_rx* tid_rx ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct tid_ampdu_rx *tid_rx = FUNC0(tid_rx, t, reorder_timer);

	FUNC2();
	FUNC1(tid_rx->sta, tid_rx->tid);
	FUNC3();
}