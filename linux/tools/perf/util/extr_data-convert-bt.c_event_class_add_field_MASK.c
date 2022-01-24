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
struct tep_format_field {char* alias; char* name; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_event_class {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bt_ctf_event_class*,struct bt_ctf_field_type*,char*) ; 
 struct bt_ctf_field_type* FUNC1 (struct bt_ctf_event_class*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bt_ctf_field_type*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct bt_ctf_event_class *event_class,
		struct bt_ctf_field_type *type,
		struct tep_format_field *field)
{
	struct bt_ctf_field_type *t = NULL;
	char *name;
	int dup = 1;
	int ret;

	/* alias was already assigned */
	if (field->alias != field->name)
		return FUNC0(event_class, type,
				(char *)field->alias);

	name = field->name;

	/* If 'name' is a keywork, add prefix. */
	if (FUNC3(name))
		name = FUNC4(name, field->name, -1);

	if (!name) {
		FUNC5("Failed to fix invalid identifier.");
		return -1;
	}
	while ((t = FUNC1(event_class, name))) {
		FUNC2(t);
		name = FUNC4(name, field->name, dup++);
		if (!name) {
			FUNC5("Failed to create dup name for '%s'\n", field->name);
			return -1;
		}
	}

	ret = FUNC0(event_class, type, name);
	if (!ret)
		field->alias = name;

	return ret;
}