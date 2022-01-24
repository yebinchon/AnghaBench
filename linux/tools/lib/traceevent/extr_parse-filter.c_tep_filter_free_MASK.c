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
struct tep_event_filter {int /*<<< orphan*/  tep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tep_event_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct tep_event_filter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tep_event_filter *filter)
{
	FUNC2(filter->tep);

	FUNC1(filter);

	FUNC0(filter);
}