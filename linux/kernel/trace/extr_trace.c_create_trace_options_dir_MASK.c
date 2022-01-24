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
struct trace_array {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int TOP_LEVEL_TRACE_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*,scalar_t__,int) ; 
 struct trace_array global_trace ; 
 scalar_t__* trace_options ; 
 struct dentry* FUNC1 (struct trace_array*) ; 

__attribute__((used)) static void FUNC2(struct trace_array *tr)
{
	struct dentry *t_options;
	bool top_level = tr == &global_trace;
	int i;

	t_options = FUNC1(tr);
	if (!t_options)
		return;

	for (i = 0; trace_options[i]; i++) {
		if (top_level ||
		    !((1 << i) & TOP_LEVEL_TRACE_FLAGS))
			FUNC0(tr, trace_options[i], i);
	}
}