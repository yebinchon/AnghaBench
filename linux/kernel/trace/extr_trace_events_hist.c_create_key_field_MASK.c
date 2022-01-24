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
typedef  int /*<<< orphan*/  u64 ;
struct trace_event_file {int dummy; } ;
struct trace_array {int dummy; } ;
struct hist_trigger_data {scalar_t__ key_size; scalar_t__ n_keys; int /*<<< orphan*/  n_fields; struct hist_field** fields; TYPE_1__* event_file; } ;
struct hist_field {unsigned int size; unsigned int offset; } ;
struct TYPE_2__ {struct trace_array* tr; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HIST_ERR_INVALID_REF_KEY ; 
 unsigned int HIST_FIELDS_MAX ; 
 unsigned long HIST_FIELD_FL_KEY ; 
 unsigned long HIST_FIELD_FL_STACKTRACE ; 
 scalar_t__ HIST_KEY_SIZE_MAX ; 
 int HIST_STACKTRACE_DEPTH ; 
 scalar_t__ FUNC1 (struct hist_field*) ; 
 int FUNC2 (struct hist_field*) ; 
 scalar_t__ TRACING_MAP_KEYS_MAX ; 
 scalar_t__ FUNC3 (int) ; 
 struct hist_field* FUNC4 (struct hist_trigger_data*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct trace_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hist_field* FUNC9 (struct hist_trigger_data*,struct trace_event_file*,char*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static int FUNC11(struct hist_trigger_data *hist_data,
			    unsigned int key_idx,
			    unsigned int key_offset,
			    struct trace_event_file *file,
			    char *field_str)
{
	struct trace_array *tr = hist_data->event_file->tr;
	struct hist_field *hist_field = NULL;
	unsigned long flags = 0;
	unsigned int key_size;
	int ret = 0;

	if (FUNC3(key_idx >= HIST_FIELDS_MAX))
		return -EINVAL;

	flags |= HIST_FIELD_FL_KEY;

	if (FUNC10(field_str, "stacktrace") == 0) {
		flags |= HIST_FIELD_FL_STACKTRACE;
		key_size = sizeof(unsigned long) * HIST_STACKTRACE_DEPTH;
		hist_field = FUNC4(hist_data, NULL, flags, NULL);
	} else {
		hist_field = FUNC9(hist_data, file, field_str, flags,
					NULL, 0);
		if (FUNC1(hist_field)) {
			ret = FUNC2(hist_field);
			goto out;
		}

		if (FUNC7(hist_field, 0))	{
			FUNC8(tr, HIST_ERR_INVALID_REF_KEY, FUNC6(field_str));
			FUNC5(hist_field, 0);
			ret = -EINVAL;
			goto out;
		}

		key_size = hist_field->size;
	}

	hist_data->fields[key_idx] = hist_field;

	key_size = FUNC0(key_size, sizeof(u64));
	hist_data->fields[key_idx]->size = key_size;
	hist_data->fields[key_idx]->offset = key_offset;

	hist_data->key_size += key_size;

	if (hist_data->key_size > HIST_KEY_SIZE_MAX) {
		ret = -EINVAL;
		goto out;
	}

	hist_data->n_keys++;
	hist_data->n_fields++;

	if (FUNC3(hist_data->n_keys > TRACING_MAP_KEYS_MAX))
		return -EINVAL;

	ret = key_size;
 out:
	return ret;
}