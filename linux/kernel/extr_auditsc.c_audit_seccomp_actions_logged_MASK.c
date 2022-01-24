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
 int /*<<< orphan*/  AUDIT_CONFIG_CHANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,char const*,char const*,int) ; 
 struct audit_buffer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(const char *names, const char *old_names,
				  int res)
{
	struct audit_buffer *ab;

	if (!audit_enabled)
		return;

	ab = FUNC3(FUNC0(), GFP_KERNEL,
			     AUDIT_CONFIG_CHANGE);
	if (FUNC4(!ab))
		return;

	FUNC2(ab,
			 "op=seccomp-logging actions=%s old-actions=%s res=%d",
			 names, old_names, res);
	FUNC1(ab);
}