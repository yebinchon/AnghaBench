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
struct trace_array {struct dentry* event_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ftrace_set_event_fops ; 
 int /*<<< orphan*/  ftrace_set_event_pid_fops ; 
 int /*<<< orphan*/  ftrace_show_header_fops ; 
 int /*<<< orphan*/  ftrace_tr_enable_fops ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct trace_array* ring_buffer_print_entry_header ; 
 struct trace_array* ring_buffer_print_page_header ; 
 struct dentry* FUNC1 (char*,int,struct dentry*,struct trace_array*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (char*,struct dentry*) ; 
 struct dentry* FUNC3 (char*,int,struct dentry*,struct trace_array*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct dentry *parent, struct trace_array *tr)
{
	struct dentry *d_events;
	struct dentry *entry;

	entry = FUNC3("set_event", 0644, parent,
				    tr, &ftrace_set_event_fops);
	if (!entry) {
		FUNC0("Could not create tracefs 'set_event' entry\n");
		return -ENOMEM;
	}

	d_events = FUNC2("events", parent);
	if (!d_events) {
		FUNC0("Could not create tracefs 'events' directory\n");
		return -ENOMEM;
	}

	entry = FUNC1("enable", 0644, d_events,
				  tr, &ftrace_tr_enable_fops);
	if (!entry) {
		FUNC0("Could not create tracefs 'enable' entry\n");
		return -ENOMEM;
	}

	/* There are not as crucial, just warn if they are not created */

	entry = FUNC3("set_event_pid", 0644, parent,
				    tr, &ftrace_set_event_pid_fops);
	if (!entry)
		FUNC0("Could not create tracefs 'set_event_pid' entry\n");

	/* ring buffer internal formats */
	entry = FUNC1("header_page", 0444, d_events,
				  ring_buffer_print_page_header,
				  &ftrace_show_header_fops);
	if (!entry)
		FUNC0("Could not create tracefs 'header_page' entry\n");

	entry = FUNC1("header_event", 0444, d_events,
				  ring_buffer_print_entry_header,
				  &ftrace_show_header_fops);
	if (!entry)
		FUNC0("Could not create tracefs 'header_event' entry\n");

	tr->event_dir = d_events;

	return 0;
}