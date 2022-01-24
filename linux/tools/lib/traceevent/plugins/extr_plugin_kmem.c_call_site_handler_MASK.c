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
struct tep_record {void* data; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {int /*<<< orphan*/  tep; } ;

/* Variables and functions */
 struct tep_format_field* FUNC0 (struct tep_event*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,unsigned long long) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC3 (struct tep_format_field*,void*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char*,char const*,int) ; 

__attribute__((used)) static int FUNC5(struct trace_seq *s, struct tep_record *record,
			     struct tep_event *event, void *context)
{
	struct tep_format_field *field;
	unsigned long long val, addr;
	void *data = record->data;
	const char *func;

	field = FUNC0(event, "call_site");
	if (!field)
		return 1;

	if (FUNC3(field, data, &val))
		return 1;

	func = FUNC1(event->tep, val);
	if (!func)
		return 1;

	addr = FUNC2(event->tep, val);

	FUNC4(s, "(%s+0x%x) ", func, (int)(val - addr));
	return 1;
}