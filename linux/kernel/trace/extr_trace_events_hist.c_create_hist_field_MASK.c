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
typedef  int /*<<< orphan*/  u64 ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_2__ {void* name; } ;
struct hist_field {int size; char* type; unsigned long flags; TYPE_1__ var; struct ftrace_event_field* field; int /*<<< orphan*/  fn; int /*<<< orphan*/  is_signed; struct hist_field** operands; struct hist_trigger_data* hist_data; } ;
struct ftrace_event_field {char* type; scalar_t__ filter_type; int size; int /*<<< orphan*/  is_signed; } ;

/* Variables and functions */
 scalar_t__ FILTER_DYN_STRING ; 
 scalar_t__ FILTER_STATIC_STRING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HIST_FIELD_FL_ALIAS ; 
 unsigned long HIST_FIELD_FL_CPU ; 
 unsigned long HIST_FIELD_FL_EXPR ; 
 unsigned long HIST_FIELD_FL_HITCOUNT ; 
 unsigned long HIST_FIELD_FL_LOG2 ; 
 unsigned long HIST_FIELD_FL_STACKTRACE ; 
 unsigned long HIST_FIELD_FL_STRING ; 
 unsigned long HIST_FIELD_FL_TIMESTAMP ; 
 unsigned long HIST_FIELD_FL_VAR_REF ; 
 int MAX_FILTER_STR_VAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hist_field_counter ; 
 int /*<<< orphan*/  hist_field_cpu ; 
 int /*<<< orphan*/  hist_field_dynstring ; 
 int /*<<< orphan*/  hist_field_log2 ; 
 int /*<<< orphan*/  hist_field_none ; 
 int /*<<< orphan*/  hist_field_pstring ; 
 int /*<<< orphan*/  hist_field_string ; 
 int /*<<< orphan*/  hist_field_timestamp ; 
 int /*<<< orphan*/  hist_field_var_ref ; 
 scalar_t__ FUNC2 (struct ftrace_event_field*) ; 
 scalar_t__ FUNC3 (struct ftrace_event_field*) ; 
 void* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct hist_field* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hist_field *FUNC7(struct hist_trigger_data *hist_data,
					    struct ftrace_event_field *field,
					    unsigned long flags,
					    char *var_name)
{
	struct hist_field *hist_field;

	if (field && FUNC2(field))
		return NULL;

	hist_field = FUNC5(sizeof(struct hist_field), GFP_KERNEL);
	if (!hist_field)
		return NULL;

	hist_field->hist_data = hist_data;

	if (flags & HIST_FIELD_FL_EXPR || flags & HIST_FIELD_FL_ALIAS)
		goto out; /* caller will populate */

	if (flags & HIST_FIELD_FL_VAR_REF) {
		hist_field->fn = hist_field_var_ref;
		goto out;
	}

	if (flags & HIST_FIELD_FL_HITCOUNT) {
		hist_field->fn = hist_field_counter;
		hist_field->size = sizeof(u64);
		hist_field->type = FUNC4("u64", GFP_KERNEL);
		if (!hist_field->type)
			goto free;
		goto out;
	}

	if (flags & HIST_FIELD_FL_STACKTRACE) {
		hist_field->fn = hist_field_none;
		goto out;
	}

	if (flags & HIST_FIELD_FL_LOG2) {
		unsigned long fl = flags & ~HIST_FIELD_FL_LOG2;
		hist_field->fn = hist_field_log2;
		hist_field->operands[0] = FUNC7(hist_data, field, fl, NULL);
		hist_field->size = hist_field->operands[0]->size;
		hist_field->type = FUNC4(hist_field->operands[0]->type, GFP_KERNEL);
		if (!hist_field->type)
			goto free;
		goto out;
	}

	if (flags & HIST_FIELD_FL_TIMESTAMP) {
		hist_field->fn = hist_field_timestamp;
		hist_field->size = sizeof(u64);
		hist_field->type = FUNC4("u64", GFP_KERNEL);
		if (!hist_field->type)
			goto free;
		goto out;
	}

	if (flags & HIST_FIELD_FL_CPU) {
		hist_field->fn = hist_field_cpu;
		hist_field->size = sizeof(int);
		hist_field->type = FUNC4("unsigned int", GFP_KERNEL);
		if (!hist_field->type)
			goto free;
		goto out;
	}

	if (FUNC0(!field))
		goto out;

	if (FUNC3(field)) {
		flags |= HIST_FIELD_FL_STRING;

		hist_field->size = MAX_FILTER_STR_VAL;
		hist_field->type = FUNC4(field->type, GFP_KERNEL);
		if (!hist_field->type)
			goto free;

		if (field->filter_type == FILTER_STATIC_STRING)
			hist_field->fn = hist_field_string;
		else if (field->filter_type == FILTER_DYN_STRING)
			hist_field->fn = hist_field_dynstring;
		else
			hist_field->fn = hist_field_pstring;
	} else {
		hist_field->size = field->size;
		hist_field->is_signed = field->is_signed;
		hist_field->type = FUNC4(field->type, GFP_KERNEL);
		if (!hist_field->type)
			goto free;

		hist_field->fn = FUNC6(field->size,
						 field->is_signed);
		if (!hist_field->fn) {
			FUNC1(hist_field, 0);
			return NULL;
		}
	}
 out:
	hist_field->field = field;
	hist_field->flags = flags;

	if (var_name) {
		hist_field->var.name = FUNC4(var_name, GFP_KERNEL);
		if (!hist_field->var.name)
			goto free;
	}

	return hist_field;
 free:
	FUNC1(hist_field, 0);
	return NULL;
}