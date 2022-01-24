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
struct list_head {int dummy; } ;
struct ftrace_event_field {char const* name; char const* type; int filter_type; int offset; int size; int is_signed; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FILTER_OTHER ; 
 int /*<<< orphan*/  GFP_TRACE ; 
 int /*<<< orphan*/  field_cachep ; 
 int FUNC0 (char const*) ; 
 struct ftrace_event_field* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static int FUNC3(struct list_head *head, const char *type,
				const char *name, int offset, int size,
				int is_signed, int filter_type)
{
	struct ftrace_event_field *field;

	field = FUNC1(field_cachep, GFP_TRACE);
	if (!field)
		return -ENOMEM;

	field->name = name;
	field->type = type;

	if (filter_type == FILTER_OTHER)
		field->filter_type = FUNC0(type);
	else
		field->filter_type = filter_type;

	field->offset = offset;
	field->size = size;
	field->is_signed = is_signed;

	FUNC2(&field->link, head);

	return 0;
}