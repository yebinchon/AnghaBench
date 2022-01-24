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
struct process_timer {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 struct process_timer* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct process_timer* timeout ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct process_timer *timeout = FUNC0(timeout, t, timer);

	FUNC1(timeout->task);
}