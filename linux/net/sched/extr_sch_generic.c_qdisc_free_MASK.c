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
struct Qdisc {int padded; int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct Qdisc*) ; 

void FUNC3(struct Qdisc *qdisc)
{
	if (FUNC2(qdisc)) {
		FUNC0(qdisc->cpu_bstats);
		FUNC0(qdisc->cpu_qstats);
	}

	FUNC1((char *) qdisc - qdisc->padded);
}