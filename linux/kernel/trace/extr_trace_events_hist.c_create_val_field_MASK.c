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
struct trace_event_file {int dummy; } ;
struct hist_trigger_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int TRACING_MAP_VALS_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct hist_trigger_data*,unsigned int,struct trace_event_file*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hist_trigger_data *hist_data,
			    unsigned int val_idx,
			    struct trace_event_file *file,
			    char *field_str)
{
	if (FUNC0(val_idx >= TRACING_MAP_VALS_MAX))
		return -EINVAL;

	return FUNC1(hist_data, val_idx, file, NULL, field_str, 0);
}