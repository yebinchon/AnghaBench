#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct trace_array {int dummy; } ;
struct hist_var_data {int /*<<< orphan*/  list; } ;
struct hist_trigger_data {TYPE_1__* event_file; } ;
struct TYPE_2__ {struct trace_array* tr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hist_trigger_data*) ; 
 struct hist_var_data* FUNC2 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_var_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_array*) ; 

__attribute__((used)) static void FUNC6(struct hist_trigger_data *hist_data)
{
	struct trace_array *tr = hist_data->event_file->tr;
	struct hist_var_data *var_data;

	var_data = FUNC2(hist_data);
	if (!var_data)
		return;

	if (FUNC0(FUNC1(hist_data)))
		return;

	FUNC4(&var_data->list);

	FUNC3(var_data);

	FUNC5(tr);
}