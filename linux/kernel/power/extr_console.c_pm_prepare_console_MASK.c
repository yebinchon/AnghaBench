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

/* Variables and functions */
 int /*<<< orphan*/  SUSPEND_CONSOLE ; 
 scalar_t__ orig_fgconsole ; 
 int /*<<< orphan*/  orig_kmsg ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(void)
{
	if (!FUNC0())
		return;

	orig_fgconsole = FUNC2(SUSPEND_CONSOLE, 1);
	if (orig_fgconsole < 0)
		return;

	orig_kmsg = FUNC1(SUSPEND_CONSOLE);
	return;
}