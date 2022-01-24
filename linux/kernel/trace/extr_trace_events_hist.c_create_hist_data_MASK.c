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
struct tracing_map_ops {int dummy; } ;
struct trace_event_file {int dummy; } ;
struct hist_trigger_data {int remove; struct hist_trigger_attrs* attrs; int /*<<< orphan*/ * map; int /*<<< orphan*/  key_size; struct trace_event_file* event_file; } ;
struct hist_trigger_attrs {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct hist_trigger_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hist_trigger_data*,struct trace_event_file*) ; 
 int FUNC4 (struct hist_trigger_data*) ; 
 int FUNC5 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct hist_trigger_data*) ; 
 struct tracing_map_ops hist_trigger_elt_data_ops ; 
 struct hist_trigger_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/ * FUNC9 (unsigned int,int /*<<< orphan*/ ,struct tracing_map_ops const*,struct hist_trigger_data*) ; 

__attribute__((used)) static struct hist_trigger_data *
FUNC10(unsigned int map_bits,
		 struct hist_trigger_attrs *attrs,
		 struct trace_event_file *file,
		 bool remove)
{
	const struct tracing_map_ops *map_ops = NULL;
	struct hist_trigger_data *hist_data;
	int ret = 0;

	hist_data = FUNC7(sizeof(*hist_data), GFP_KERNEL);
	if (!hist_data)
		return FUNC0(-ENOMEM);

	hist_data->attrs = attrs;
	hist_data->remove = remove;
	hist_data->event_file = file;

	ret = FUNC8(hist_data);
	if (ret)
		goto free;

	ret = FUNC3(hist_data, file);
	if (ret)
		goto free;

	ret = FUNC4(hist_data);
	if (ret)
		goto free;

	map_ops = &hist_trigger_elt_data_ops;

	hist_data->map = FUNC9(map_bits, hist_data->key_size,
					    map_ops, hist_data);
	if (FUNC1(hist_data->map)) {
		ret = FUNC2(hist_data->map);
		hist_data->map = NULL;
		goto free;
	}

	ret = FUNC5(hist_data);
	if (ret)
		goto free;
 out:
	return hist_data;
 free:
	hist_data->attrs = NULL;

	FUNC6(hist_data);

	hist_data = FUNC0(ret);

	goto out;
}