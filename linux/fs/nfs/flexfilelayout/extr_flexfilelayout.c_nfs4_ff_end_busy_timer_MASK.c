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
struct nfs4_ff_busy_timer {int /*<<< orphan*/  start_time; int /*<<< orphan*/  n_ops; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t
FUNC3(struct nfs4_ff_busy_timer *timer, ktime_t now)
{
	ktime_t start;

	if (FUNC1(&timer->n_ops) < 0)
		FUNC0(1);

	start = timer->start_time;
	timer->start_time = now;
	return FUNC2(now, start);
}