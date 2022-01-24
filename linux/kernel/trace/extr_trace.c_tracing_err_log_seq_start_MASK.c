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
struct trace_array {int /*<<< orphan*/  err_log; } ;
struct seq_file {struct trace_array* private; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tracing_err_log_lock ; 

__attribute__((used)) static void *FUNC2(struct seq_file *m, loff_t *pos)
{
	struct trace_array *tr = m->private;

	FUNC0(&tracing_err_log_lock);

	return FUNC1(&tr->err_log, *pos);
}