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
 int FUNC0 (struct trace_seq*,struct tep_record*,struct tep_event*,void*) ; 
 scalar_t__ FUNC1 (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct trace_seq *s,
				    struct tep_record *record,
				    struct tep_event *event, void *context)
{
	unsigned long long val;

	if (FUNC1(s, event, "created", record, &val, 1) < 0)
		return -1;

	FUNC2(s, "%s ", val ? "new" : "existing");

	if (FUNC1(s, event, "gfn", record, &val, 1) < 0)
		return -1;

	FUNC2(s, "sp gfn %llx ", val);
	return FUNC0(s, record, event, context);
}