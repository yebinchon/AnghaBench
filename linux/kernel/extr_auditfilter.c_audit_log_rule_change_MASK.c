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
struct audit_krule {int /*<<< orphan*/  listnr; int /*<<< orphan*/  filterkey; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CONFIG_CHANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*) ; 
 struct audit_buffer* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_buffer*) ; 

__attribute__((used)) static void FUNC7(char *action, struct audit_krule *rule, int res)
{
	struct audit_buffer *ab;

	if (!audit_enabled)
		return;

	ab = FUNC5(FUNC0(), GFP_KERNEL, AUDIT_CONFIG_CHANGE);
	if (!ab)
		return;
	FUNC4(ab);
	FUNC6(ab);
	FUNC2(ab, " op=%s", action);
	FUNC3(ab, rule->filterkey);
	FUNC2(ab, " list=%d res=%d", rule->listnr, res);
	FUNC1(ab);
}