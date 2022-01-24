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
struct seq_file {int dummy; } ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  var_str; } ;
struct action_data {scalar_t__ handler; int /*<<< orphan*/  action_name; TYPE_1__ track_data; } ;

/* Variables and functions */
 scalar_t__ HANDLER_ONCHANGE ; 
 scalar_t__ HANDLER_ONMAX ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct hist_trigger_data*,struct action_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m,
				  struct hist_trigger_data *hist_data,
				  struct action_data *data)
{
	if (data->handler == HANDLER_ONMAX)
		FUNC2(m, ":onmax(");
	else if (data->handler == HANDLER_ONCHANGE)
		FUNC2(m, ":onchange(");
	FUNC1(m, "%s", data->track_data.var_str);
	FUNC1(m, ").%s(", data->action_name);

	FUNC0(m, hist_data, data);

	FUNC2(m, ")");
}