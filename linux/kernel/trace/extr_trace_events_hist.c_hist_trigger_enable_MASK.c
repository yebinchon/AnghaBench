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
struct trace_event_file {int /*<<< orphan*/  triggers; } ;
struct event_trigger_data {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct trace_event_file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_event_file*) ; 

__attribute__((used)) static int FUNC4(struct event_trigger_data *data,
			       struct trace_event_file *file)
{
	int ret = 0;

	FUNC0(&data->list, &file->triggers);

	FUNC3(file);

	if (FUNC2(file, 1) < 0) {
		FUNC1(&data->list);
		FUNC3(file);
		ret--;
	}

	return ret;
}