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
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,char*,struct tep_event*,char*,struct tep_record*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct trace_seq*,char*,struct tep_event*,char*,struct tep_record*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*) ; 

__attribute__((used)) static int FUNC3(struct trace_seq *s,
				struct tep_record *record,
				struct tep_event *event, void *context)
{
	FUNC2(s, "hrtimer=");

	if (FUNC1(s, "0x%llx", event, "timer",
				record, 0) == -1)
		FUNC1(s, "0x%llx", event, "hrtimer",
				    record, 1);

	FUNC2(s, " now=");

	FUNC1(s, "%llu", event, "now", record, 1);

	FUNC0(s, " function=%s", event, "function",
				record, 0);
	return 0;
}