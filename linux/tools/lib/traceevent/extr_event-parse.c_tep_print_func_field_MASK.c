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
struct tep_record {int /*<<< orphan*/  data; } ;
struct tep_handle {int dummy; } ;
struct tep_format_field {int dummy; } ;
struct tep_event {struct tep_handle* tep; } ;
struct func_map {char* func; scalar_t__ addr; } ;

/* Variables and functions */
 struct func_map* FUNC0 (struct tep_handle*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long long) ; 
 struct tep_format_field* FUNC3 (struct tep_event*,char const*) ; 
 scalar_t__ FUNC4 (struct tep_format_field*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int FUNC5 (struct trace_seq*,char const*,char const*) ; 

int FUNC6(struct trace_seq *s, const char *fmt,
			 struct tep_event *event, const char *name,
			 struct tep_record *record, int err)
{
	struct tep_format_field *field = FUNC3(event, name);
	struct tep_handle *tep = event->tep;
	unsigned long long val;
	struct func_map *func;
	char tmp[128];

	if (!field)
		goto failed;

	if (FUNC4(field, record->data, &val))
		goto failed;

	func = FUNC0(tep, val);

	if (func)
		FUNC1(tmp, 128, "%s/0x%llx", func->func, func->addr - val);
	else
		FUNC2(tmp, "0x%08llx", val);

	return FUNC5(s, fmt, tmp);

 failed:
	if (err)
		FUNC5(s, "CAN'T FIND FIELD \"%s\"", name);
	return -1;
}