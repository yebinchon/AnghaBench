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
typedef  void tracer ;
struct trace_array {int dummy; } ;
struct seq_file {struct trace_array* private; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 void* FUNC0 (struct trace_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct seq_file*,void*,scalar_t__*) ; 
 int /*<<< orphan*/  trace_types ; 
 int /*<<< orphan*/  trace_types_lock ; 

__attribute__((used)) static void *FUNC3(struct seq_file *m, loff_t *pos)
{
	struct trace_array *tr = m->private;
	struct tracer *t;
	loff_t l = 0;

	FUNC1(&trace_types_lock);

	t = FUNC0(tr, trace_types);
	for (; t && l < *pos; t = FUNC2(m, t, &l))
			;

	return t;
}