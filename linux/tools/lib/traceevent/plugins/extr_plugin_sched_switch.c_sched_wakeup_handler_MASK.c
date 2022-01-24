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
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,unsigned long long) ; 
 int FUNC3 (struct trace_seq*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct tep_format_field*,struct tep_record*,struct trace_seq*,unsigned long long) ; 

__attribute__((used)) static int FUNC5(struct trace_seq *s,
				struct tep_record *record,
				struct tep_event *event, void *context)
{
	struct tep_format_field *field;
	unsigned long long val;

	if (FUNC1(s, event, "pid", record, &val, 1))
		return FUNC3(s, '!');

	field = FUNC0(event, "comm");
	if (field) {
		FUNC4(field, record, s, val);
		FUNC3(s, ':');
	}
	FUNC2(s, "%lld", val);

	if (FUNC1(s, event, "prio", record, &val, 0) == 0)
		FUNC2(s, " [%lld]", val);

	if (FUNC1(s, event, "success", record, &val, 1) == 0)
		FUNC2(s, " success=%lld", val);

	if (FUNC1(s, event, "target_cpu", record, &val, 0) == 0)
		FUNC2(s, " CPU:%03llu", val);

	return 0;
}