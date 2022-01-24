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
 int FUNC0 (struct hist_trigger_data*,struct trace_event_file*) ; 
 int FUNC1 (struct hist_trigger_data*,struct trace_event_file*) ; 
 int FUNC2 (struct hist_trigger_data*,struct trace_event_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_trigger_data*) ; 
 int FUNC4 (struct hist_trigger_data*) ; 

__attribute__((used)) static int FUNC5(struct hist_trigger_data *hist_data,
			      struct trace_event_file *file)
{
	int ret;

	ret = FUNC4(hist_data);
	if (ret)
		goto out;

	ret = FUNC1(hist_data, file);
	if (ret)
		goto out;

	ret = FUNC2(hist_data, file);
	if (ret)
		goto out;

	ret = FUNC0(hist_data, file);
	if (ret)
		goto out;
 out:
	FUNC3(hist_data);

	return ret;
}