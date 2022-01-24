#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_seq {int dummy; } ;
struct tep_record {int /*<<< orphan*/  cpu; } ;
struct tep_handle {int dummy; } ;
struct tep_event {struct tep_handle* tep; } ;
struct TYPE_4__ {scalar_t__ set; } ;
struct TYPE_3__ {scalar_t__ set; } ;

/* Variables and functions */
 int FUNC0 (char const*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* ftrace_indent ; 
 TYPE_1__* ftrace_parent ; 
 char* FUNC1 (struct tep_handle*,unsigned long long) ; 
 scalar_t__ FUNC2 (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,...) ; 
 int FUNC4 (struct trace_seq*,char) ; 

__attribute__((used)) static int FUNC5(struct trace_seq *s, struct tep_record *record,
			    struct tep_event *event, void *context)
{
	struct tep_handle *tep = event->tep;
	unsigned long long function;
	unsigned long long pfunction;
	const char *func;
	const char *parent;
	int index = 0;

	if (FUNC2(s, event, "ip", record, &function, 1))
		return FUNC4(s, '!');

	func = FUNC1(tep, function);

	if (FUNC2(s, event, "parent_ip", record, &pfunction, 1))
		return FUNC4(s, '!');

	parent = FUNC1(tep, pfunction);

	if (parent && ftrace_indent->set)
		index = FUNC0(parent, func, record->cpu);

	FUNC3(s, "%*s", index*3, "");

	if (func)
		FUNC3(s, "%s", func);
	else
		FUNC3(s, "0x%llx", function);

	if (ftrace_parent->set) {
		FUNC3(s, " <-- ");
		if (parent)
			FUNC3(s, "%s", parent);
		else
			FUNC3(s, "0x%llx", pfunction);
	}

	return 0;
}