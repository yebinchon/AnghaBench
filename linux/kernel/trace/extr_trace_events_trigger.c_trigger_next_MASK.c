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
 void* SHOW_AVAILABLE_TRIGGERS ; 
 struct trace_event_file* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(struct seq_file *m, void *t, loff_t *pos)
{
	struct trace_event_file *event_file = FUNC0(m->private);

	if (t == SHOW_AVAILABLE_TRIGGERS)
		return NULL;

	return FUNC1(t, &event_file->triggers, pos);
}