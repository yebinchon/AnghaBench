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
struct qdisc_watchdog {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (struct qdisc_watchdog*,struct Qdisc*,int /*<<< orphan*/ ) ; 

void FUNC1(struct qdisc_watchdog *wd, struct Qdisc *qdisc)
{
	FUNC0(wd, qdisc, CLOCK_MONOTONIC);
}