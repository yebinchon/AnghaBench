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
struct tep_event {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC1 (struct trace_seq*,struct tep_event*,char const*,struct tep_record*,unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct trace_seq *s, struct tep_record *record,
			     struct tep_event *event, const char *field)
{
	unsigned long long isa;
	unsigned long long val;
	const char *reason;

	if (FUNC1(s, event, field, record, &val, 1) < 0)
		return -1;

	if (FUNC1(s, event, "isa", record, &isa, 0) < 0)
		isa = 1;

	reason = FUNC0(isa, val);
	if (reason)
		FUNC2(s, "reason %s", reason);
	else
		FUNC2(s, "reason UNKNOWN (%llu)", val);
	return 0;
}