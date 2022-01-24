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
struct tep_record {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct tep_event {int flags; int (* handler ) (struct trace_seq*,struct tep_record*,struct tep_event*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int TEP_EVENT_FL_NOHANDLE ; 
 int TEP_EVENT_FL_PRINTRAW ; 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tep_event*) ; 
 int FUNC1 (struct trace_seq*,struct tep_record*,struct tep_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tep_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*) ; 

__attribute__((used)) static void FUNC4(struct trace_seq *s, char *format, bool raw,
			     struct tep_event *event, struct tep_record *record)
{
	int print_pretty = 1;

	if (raw || (event->flags & TEP_EVENT_FL_PRINTRAW))
		FUNC2(s, record->data, record->size, event);
	else {

		if (event->handler && !(event->flags & TEP_EVENT_FL_NOHANDLE))
			print_pretty = event->handler(s, record, event,
						      event->context);

		if (print_pretty)
			FUNC0(s, record->data, record->size, event);
	}

	FUNC3(s);
}