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
 int /*<<< orphan*/  AUDIT_ANOM_LINK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,...) ; 
 struct audit_buffer* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*) ; 

void FUNC6(const char *operation)
{
	struct audit_buffer *ab;

	if (!audit_enabled || FUNC1())
		return;

	/* Generate AUDIT_ANOM_LINK with subject, operation, outcome. */
	ab = FUNC4(FUNC0(), GFP_KERNEL, AUDIT_ANOM_LINK);
	if (!ab)
		return;
	FUNC3(ab, "op=%s", operation);
	FUNC5(ab);
	FUNC3(ab, " res=0");
	FUNC2(ab);
}