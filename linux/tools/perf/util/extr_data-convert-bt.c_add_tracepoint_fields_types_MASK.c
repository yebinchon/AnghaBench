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
struct tep_format_field {unsigned long flags; int /*<<< orphan*/  name; int /*<<< orphan*/  arraylen; struct tep_format_field* next; } ;
struct ctf_writer {int dummy; } ;
struct bt_ctf_field_type {int dummy; } ;
struct bt_ctf_event_class {int dummy; } ;

/* Variables and functions */
 unsigned long TEP_FIELD_IS_ARRAY ; 
 unsigned long TEP_FIELD_IS_STRING ; 
 struct bt_ctf_field_type* FUNC0 (struct bt_ctf_field_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bt_ctf_field_type*) ; 
 int FUNC2 (struct bt_ctf_event_class*,struct bt_ctf_field_type*,struct tep_format_field*) ; 
 struct bt_ctf_field_type* FUNC3 (struct ctf_writer*,struct tep_format_field*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ctf_writer *cw,
				       struct tep_format_field *fields,
				       struct bt_ctf_event_class *event_class)
{
	struct tep_format_field *field;
	int ret;

	for (field = fields; field; field = field->next) {
		struct bt_ctf_field_type *type;
		unsigned long flags = field->flags;

		FUNC4("  field '%s'\n", field->name);

		type = FUNC3(cw, field);
		if (!type)
			return -1;

		/*
		 * A string is an array of chars. For this we use the string
		 * type and don't care that it is an array. What we don't
		 * support is an array of strings.
		 */
		if (flags & TEP_FIELD_IS_STRING)
			flags &= ~TEP_FIELD_IS_ARRAY;

		if (flags & TEP_FIELD_IS_ARRAY)
			type = FUNC0(type, field->arraylen);

		ret = FUNC2(event_class, type, field);

		if (flags & TEP_FIELD_IS_ARRAY)
			FUNC1(type);

		if (ret) {
			FUNC5("Failed to add field '%s': %d\n",
					field->name, ret);
			return -1;
		}
	}

	return 0;
}