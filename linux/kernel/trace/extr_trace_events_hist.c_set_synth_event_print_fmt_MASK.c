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
struct trace_event_call {char* print_fmt; struct synth_event* data; } ;
struct synth_event {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct synth_event*,char*,int) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct trace_event_call *call)
{
	struct synth_event *event = call->data;
	char *print_fmt;
	int len;

	/* First: called with 0 length to calculate the needed length */
	len = FUNC0(event, NULL, 0);

	print_fmt = FUNC1(len + 1, GFP_KERNEL);
	if (!print_fmt)
		return -ENOMEM;

	/* Second: actually write the @print_fmt */
	FUNC0(event, print_fmt, len + 1);
	call->print_fmt = print_fmt;

	return 0;
}