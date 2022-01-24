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
struct trace_event_file {int /*<<< orphan*/  flags; int /*<<< orphan*/  tm_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_FILE_FL_TRIGGER_MODE_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct trace_event_file*,int,int) ; 

int FUNC5(struct trace_event_file *file,
				       int trigger_enable)
{
	int ret = 0;

	if (trigger_enable) {
		if (FUNC1(&file->tm_ref) > 1)
			return ret;
		FUNC3(EVENT_FILE_FL_TRIGGER_MODE_BIT, &file->flags);
		ret = FUNC4(file, 1, 1);
	} else {
		if (FUNC0(&file->tm_ref) > 0)
			return ret;
		FUNC2(EVENT_FILE_FL_TRIGGER_MODE_BIT, &file->flags);
		ret = FUNC4(file, 0, 1);
	}

	return ret;
}