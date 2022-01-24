#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trace_probe {TYPE_1__* event; } ;
struct trace_event_file {int dummy; } ;
struct event_file_link {int /*<<< orphan*/  list; struct trace_event_file* file; } ;
struct TYPE_2__ {int /*<<< orphan*/  files; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TP_FLAG_TRACE ; 
 struct event_file_link* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_probe*,int /*<<< orphan*/ ) ; 

int FUNC4(struct trace_probe *tp, struct trace_event_file *file)
{
	struct event_file_link *link;

	link = FUNC1(sizeof(*link), GFP_KERNEL);
	if (!link)
		return -ENOMEM;

	link->file = file;
	FUNC0(&link->list);
	FUNC2(&link->list, &tp->event->files);
	FUNC3(tp, TP_FLAG_TRACE);
	return 0;
}