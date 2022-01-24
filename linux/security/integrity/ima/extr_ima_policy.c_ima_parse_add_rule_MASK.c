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
struct ima_rule_entry {int /*<<< orphan*/  list; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_STATUS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,struct ima_rule_entry*) ; 
 int /*<<< orphan*/  ima_temp_rules ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ima_rule_entry*) ; 
 struct ima_rule_entry* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

ssize_t FUNC9(char *rule)
{
	static const char op[] = "update_policy";
	char *p;
	struct ima_rule_entry *entry;
	ssize_t result, len;
	int audit_info = 0;

	p = FUNC7(&rule, "\n");
	len = FUNC6(p) + 1;
	p += FUNC8(p, " \t");

	if (*p == '#' || *p == '\0')
		return len;

	entry = FUNC4(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		FUNC2(AUDIT_INTEGRITY_STATUS, NULL,
				    NULL, op, "-ENOMEM", -ENOMEM, audit_info);
		return -ENOMEM;
	}

	FUNC0(&entry->list);

	result = FUNC1(p, entry);
	if (result) {
		FUNC3(entry);
		FUNC2(AUDIT_INTEGRITY_STATUS, NULL,
				    NULL, op, "invalid-policy", result,
				    audit_info);
		return result;
	}

	FUNC5(&entry->list, &ima_temp_rules);

	return len;
}