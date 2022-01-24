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
struct selinux_audit_rule {int /*<<< orphan*/  au_ctxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct selinux_audit_rule*) ; 

void FUNC2(void *vrule)
{
	struct selinux_audit_rule *rule = vrule;

	if (rule) {
		FUNC0(&rule->au_ctxt);
		FUNC1(rule);
	}
}