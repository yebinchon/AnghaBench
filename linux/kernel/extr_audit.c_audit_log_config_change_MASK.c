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
typedef  int /*<<< orphan*/  u32 ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CONFIG_CHANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*) ; 
 struct audit_buffer* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct audit_buffer*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(char *function_name, u32 new, u32 old,
				   int allow_changes)
{
	struct audit_buffer *ab;
	int rc = 0;

	ab = FUNC4(FUNC0(), GFP_KERNEL, AUDIT_CONFIG_CHANGE);
	if (FUNC6(!ab))
		return rc;
	FUNC2(ab, "op=set %s=%u old=%u ", function_name, new, old);
	FUNC3(ab);
	rc = FUNC5(ab);
	if (rc)
		allow_changes = 0; /* Something weird, deny request */
	FUNC2(ab, " res=%d", allow_changes);
	FUNC1(ab);
	return rc;
}