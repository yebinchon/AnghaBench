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
struct tep_record {int cpu; int /*<<< orphan*/  data; } ;
struct tep_handle {int dummy; } ;
struct tep_event {int dummy; } ;
struct print_event_type {int /*<<< orphan*/  format; } ;

/* Variables and functions */
#define  TEP_PRINT_CPU 130 
#define  TEP_PRINT_PID 129 
#define  TEP_PRINT_TIME 128 
 int FUNC0 (struct tep_handle*,int /*<<< orphan*/ ) ; 
 void FUNC1 (struct tep_handle*,struct trace_seq*,int /*<<< orphan*/ ,struct tep_event*,struct tep_record*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct tep_handle *tep, struct trace_seq *s,
		      struct tep_record *record, struct tep_event *event,
		      int arg, struct print_event_type *type)
{
	int param;

	switch (arg) {
	case TEP_PRINT_CPU:
		param = record->cpu;
		break;
	case TEP_PRINT_PID:
		param = FUNC0(tep, record->data);
		break;
	case TEP_PRINT_TIME:
		return FUNC1(tep, s, type->format, event, record);
	default:
		return;
	}
	FUNC2(s, type->format, param);
}