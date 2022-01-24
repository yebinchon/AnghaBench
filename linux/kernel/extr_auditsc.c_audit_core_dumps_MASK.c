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
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_ANOM_ABEND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 long SIGQUIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,long) ; 
 struct audit_buffer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(long signr)
{
	struct audit_buffer *ab;

	if (!audit_enabled)
		return;

	if (signr == SIGQUIT)	/* don't care for those */
		return;

	ab = FUNC3(FUNC0(), GFP_KERNEL, AUDIT_ANOM_ABEND);
	if (FUNC5(!ab))
		return;
	FUNC4(ab);
	FUNC2(ab, " sig=%ld res=1", signr);
	FUNC1(ab);
}