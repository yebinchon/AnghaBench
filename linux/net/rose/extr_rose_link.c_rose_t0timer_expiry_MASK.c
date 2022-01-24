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
struct rose_neigh {scalar_t__ dce_mode; } ;

/* Variables and functions */
 struct rose_neigh* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct rose_neigh* neigh ; 
 int /*<<< orphan*/  FUNC1 (struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC2 (struct rose_neigh*) ; 
 int /*<<< orphan*/  t0timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct rose_neigh *neigh = FUNC0(neigh, t, t0timer);

	FUNC2(neigh);

	neigh->dce_mode = 0;

	FUNC1(neigh);
}