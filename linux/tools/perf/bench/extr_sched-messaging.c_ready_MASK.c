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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct pollfd*,int,int) ; 
 int FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(int ready_out, int wakefd)
{
	char dummy;
	struct pollfd pollfd = { .fd = wakefd, .events = POLLIN };

	/* Tell them we're ready. */
	if (FUNC2(ready_out, &dummy, 1) != 1)
		FUNC0(EXIT_FAILURE, "CLIENT: ready write");

	/* Wait for "GO" signal */
	if (FUNC1(&pollfd, 1, -1) != 1)
		FUNC0(EXIT_FAILURE, "poll");
}