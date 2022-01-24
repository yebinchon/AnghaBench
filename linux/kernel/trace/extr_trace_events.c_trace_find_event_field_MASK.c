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
struct trace_event_call {int dummy; } ;
struct list_head {int dummy; } ;
struct ftrace_event_field {int dummy; } ;

/* Variables and functions */
 struct ftrace_event_field* FUNC0 (struct list_head*,char*) ; 
 struct list_head ftrace_common_fields ; 
 struct list_head ftrace_generic_fields ; 
 struct list_head* FUNC1 (struct trace_event_call*) ; 

struct ftrace_event_field *
FUNC2(struct trace_event_call *call, char *name)
{
	struct ftrace_event_field *field;
	struct list_head *head;

	head = FUNC1(call);
	field = FUNC0(head, name);
	if (field)
		return field;

	field = FUNC0(&ftrace_generic_fields, name);
	if (field)
		return field;

	return FUNC0(&ftrace_common_fields, name);
}