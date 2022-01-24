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
struct tep_record {int cpu; int size; void* data; } ;
struct tep_event {int /*<<< orphan*/  tep; } ;
typedef  int /*<<< orphan*/  record ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TEP_PRINT_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct tep_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct trace_seq*,struct tep_record*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*) ; 

void FUNC5(struct tep_event *event,
			   int cpu, void *data, int size, FILE *fp)
{
	struct tep_record record;
	struct trace_seq s;

	FUNC0(&record, 0, sizeof(record));
	record.cpu = cpu;
	record.size = size;
	record.data = data;

	FUNC4(&s);
	FUNC1(event->tep, &s, &record, "%s", TEP_PRINT_INFO);
	FUNC3(&s, fp);
	FUNC2(&s);
}