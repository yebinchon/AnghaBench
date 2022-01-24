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
struct trace_array {struct dentry* percpu_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 struct dentry* FUNC2 (char*,struct dentry*) ; 
 struct dentry* FUNC3 (struct trace_array*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct trace_array *tr, int cpu)
{
	struct dentry *d_tracer;

	if (tr->percpu_dir)
		return tr->percpu_dir;

	d_tracer = FUNC3(tr);
	if (FUNC0(d_tracer))
		return NULL;

	tr->percpu_dir = FUNC2("per_cpu", d_tracer);

	FUNC1(!tr->percpu_dir,
		  "Could not create tracefs directory 'per_cpu/%d'\n", cpu);

	return tr->percpu_dir;
}