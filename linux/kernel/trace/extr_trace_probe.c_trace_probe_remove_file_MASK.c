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
struct event_file_link {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  files; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  TP_FLAG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct event_file_link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct trace_probe*,int /*<<< orphan*/ ) ; 
 struct event_file_link* FUNC5 (struct trace_probe*,struct trace_event_file*) ; 

int FUNC6(struct trace_probe *tp,
			    struct trace_event_file *file)
{
	struct event_file_link *link;

	link = FUNC5(tp, file);
	if (!link)
		return -ENOENT;

	FUNC1(&link->list);
	FUNC3();
	FUNC0(link);

	if (FUNC2(&tp->event->files))
		FUNC4(tp, TP_FLAG_TRACE);

	return 0;
}