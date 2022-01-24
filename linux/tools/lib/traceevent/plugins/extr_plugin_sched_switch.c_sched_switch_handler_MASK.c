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
struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {int dummy; } ;

/* Variables and functions */
 struct tep_format_field* FUNC0 (struct tep_event*,char*) ; 
 scalar_t__ FUNC1 (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,int) ; 
 int FUNC3 (struct trace_seq*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tep_format_field*,struct tep_record*,struct trace_seq*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*,unsigned long long) ; 

__attribute__((used)) static int FUNC7(struct trace_seq *s,
				struct tep_record *record,
				struct tep_event *event, void *context)
{
	struct tep_format_field *field;
	unsigned long long val;

	if (FUNC1(s, event, "prev_pid", record, &val, 1))
		return FUNC3(s, '!');

	field = FUNC0(event, "prev_comm");
	if (field) {
		FUNC5(field, record, s, val);
		FUNC3(s, ':');
	}
	FUNC2(s, "%lld ", val);

	if (FUNC1(s, event, "prev_prio", record, &val, 0) == 0)
		FUNC2(s, "[%d] ", (int) val);

	if (FUNC1(s,  event, "prev_state", record, &val, 0) == 0)
		FUNC6(s, val);

	FUNC4(s, " ==> ");

	if (FUNC1(s, event, "next_pid", record, &val, 1))
		return FUNC3(s, '!');

	field = FUNC0(event, "next_comm");
	if (field) {
		FUNC5(field, record, s, val);
		FUNC3(s, ':');
	}
	FUNC2(s, "%lld", val);

	if (FUNC1(s, event, "next_prio", record, &val, 0) == 0)
		FUNC2(s, " [%d]", (int) val);

	return 0;
}