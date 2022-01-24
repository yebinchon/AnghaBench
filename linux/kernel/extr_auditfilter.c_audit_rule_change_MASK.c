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
struct TYPE_2__ {scalar_t__ exe; } ;
struct audit_entry {TYPE_1__ rule; } ;

/* Variables and functions */
#define  AUDIT_ADD_RULE 129 
#define  AUDIT_DEL_RULE 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct audit_entry*) ; 
 int FUNC1 (struct audit_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct audit_entry*) ; 
 struct audit_entry* FUNC4 (void*,size_t) ; 
 int FUNC5 (struct audit_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_entry*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int FUNC9(int type, int seq, void *data, size_t datasz)
{
	int err = 0;
	struct audit_entry *entry;

	switch (type) {
	case AUDIT_ADD_RULE:
		entry = FUNC4(data, datasz);
		if (FUNC0(entry))
			return FUNC1(entry);
		err = FUNC3(entry);
		FUNC7("add_rule", &entry->rule, !err);
		break;
	case AUDIT_DEL_RULE:
		entry = FUNC4(data, datasz);
		if (FUNC0(entry))
			return FUNC1(entry);
		err = FUNC5(entry);
		FUNC7("remove_rule", &entry->rule, !err);
		break;
	default:
		FUNC2(1);
		return -EINVAL;
	}

	if (err || type == AUDIT_DEL_RULE) {
		if (entry->rule.exe)
			FUNC8(entry->rule.exe);
		FUNC6(entry);
	}

	return err;
}