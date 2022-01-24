#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct audit_krule {int /*<<< orphan*/  listnr; int /*<<< orphan*/  filterkey; TYPE_1__* tree; } ;
struct audit_context {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pathname; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_CONFIG_CHANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  audit_enabled ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 struct audit_buffer* FUNC3 (struct audit_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct audit_context *context,
				       struct audit_krule *rule)
{
	struct audit_buffer *ab;

	if (!audit_enabled)
		return;
	ab = FUNC3(context, GFP_KERNEL, AUDIT_CONFIG_CHANGE);
	if (FUNC5(!ab))
		return;
	FUNC1(ab, "op=remove_rule dir=");
	FUNC4(ab, rule->tree->pathname);
	FUNC2(ab, rule->filterkey);
	FUNC1(ab, " list=%d res=1", rule->listnr);
	FUNC0(ab);
}