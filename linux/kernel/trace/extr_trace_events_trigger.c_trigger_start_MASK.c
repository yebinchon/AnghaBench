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
struct seq_file {int /*<<< orphan*/  private; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* SHOW_AVAILABLE_TRIGGERS ; 
 struct trace_event_file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void *FUNC6(struct seq_file *m, loff_t *pos)
{
	struct trace_event_file *event_file;

	/* ->stop() is called even if ->start() fails */
	FUNC3(&event_mutex);
	event_file = FUNC1(m->private);
	if (FUNC5(!event_file))
		return FUNC0(-ENODEV);

	if (FUNC2(&event_file->triggers))
		return *pos == 0 ? SHOW_AVAILABLE_TRIGGERS : NULL;

	return FUNC4(&event_file->triggers, *pos);
}