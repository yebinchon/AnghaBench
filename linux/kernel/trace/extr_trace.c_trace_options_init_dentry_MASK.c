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
struct trace_array {struct dentry* options; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct dentry* FUNC2 (char*,struct dentry*) ; 
 struct dentry* FUNC3 (struct trace_array*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct trace_array *tr)
{
	struct dentry *d_tracer;

	if (tr->options)
		return tr->options;

	d_tracer = FUNC3(tr);
	if (FUNC0(d_tracer))
		return NULL;

	tr->options = FUNC2("options", d_tracer);
	if (!tr->options) {
		FUNC1("Could not create tracefs directory 'options'\n");
		return NULL;
	}

	return tr->options;
}