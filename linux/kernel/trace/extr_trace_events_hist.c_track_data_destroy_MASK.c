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
struct track_data {struct hist_trigger_data* hist_data; } ;
struct trace_event_file {int /*<<< orphan*/  tr; } ;
struct hist_trigger_data {struct trace_event_file* event_file; } ;
struct TYPE_2__ {int /*<<< orphan*/  var_str; int /*<<< orphan*/  track_var; } ;
struct action_data {scalar_t__ action; TYPE_1__ track_data; } ;

/* Variables and functions */
 scalar_t__ ACTION_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (struct action_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct track_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct track_data*) ; 

__attribute__((used)) static void FUNC6(struct hist_trigger_data *hist_data,
			       struct action_data *data)
{
	struct trace_event_file *file = hist_data->event_file;

	FUNC1(data->track_data.track_var, 0);

	if (data->action == ACTION_SNAPSHOT) {
		struct track_data *track_data;

		track_data = FUNC3(file->tr);
		if (track_data && track_data->hist_data == hist_data) {
			FUNC4(file->tr);
			FUNC5(track_data);
		}
	}

	FUNC2(data->track_data.var_str);

	FUNC0(data);
}