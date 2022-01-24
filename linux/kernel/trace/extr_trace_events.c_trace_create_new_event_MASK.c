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
struct trace_event_file {int /*<<< orphan*/  list; int /*<<< orphan*/  triggers; int /*<<< orphan*/  tm_ref; int /*<<< orphan*/  sm_ref; struct trace_array* tr; struct trace_event_call* event_call; } ;
struct trace_event_call {int dummy; } ;
struct trace_array {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_cachep ; 
 struct trace_event_file* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct trace_event_file *
FUNC4(struct trace_event_call *call,
		       struct trace_array *tr)
{
	struct trace_event_file *file;

	file = FUNC2(file_cachep, GFP_TRACE);
	if (!file)
		return NULL;

	file->event_call = call;
	file->tr = tr;
	FUNC1(&file->sm_ref, 0);
	FUNC1(&file->tm_ref, 0);
	FUNC0(&file->triggers);
	FUNC3(&file->list, &tr->events);

	return file;
}