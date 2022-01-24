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
struct tracing_map_sort_key {int descending; unsigned int field_idx; } ;
struct hist_trigger_data {int n_sort_keys; unsigned int n_fields; struct hist_field** fields; struct tracing_map_sort_key* sort_keys; TYPE_1__* attrs; } ;
struct hist_field {int flags; } ;
struct TYPE_2__ {char* sort_key_str; } ;

/* Variables and functions */
 int EINVAL ; 
 int HIST_FIELD_FL_VAR ; 
 unsigned int TRACING_MAP_SORT_KEYS_MAX ; 
 char* FUNC0 (struct hist_field*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int FUNC4(struct hist_trigger_data *hist_data)
{
	char *fields_str = hist_data->attrs->sort_key_str;
	struct tracing_map_sort_key *sort_key;
	int descending, ret = 0;
	unsigned int i, j, k;

	hist_data->n_sort_keys = 1; /* we always have at least one, hitcount */

	if (!fields_str)
		goto out;

	FUNC3(&fields_str, "=");
	if (!fields_str) {
		ret = -EINVAL;
		goto out;
	}

	for (i = 0; i < TRACING_MAP_SORT_KEYS_MAX; i++) {
		struct hist_field *hist_field;
		char *field_str, *field_name;
		const char *test_name;

		sort_key = &hist_data->sort_keys[i];

		field_str = FUNC3(&fields_str, ",");
		if (!field_str) {
			if (i == 0)
				ret = -EINVAL;
			break;
		}

		if ((i == TRACING_MAP_SORT_KEYS_MAX - 1) && fields_str) {
			ret = -EINVAL;
			break;
		}

		field_name = FUNC3(&field_str, ".");
		if (!field_name) {
			ret = -EINVAL;
			break;
		}

		if (FUNC2(field_name, "hitcount") == 0) {
			descending = FUNC1(field_str);
			if (descending < 0) {
				ret = descending;
				break;
			}
			sort_key->descending = descending;
			continue;
		}

		for (j = 1, k = 1; j < hist_data->n_fields; j++) {
			unsigned int idx;

			hist_field = hist_data->fields[j];
			if (hist_field->flags & HIST_FIELD_FL_VAR)
				continue;

			idx = k++;

			test_name = FUNC0(hist_field, 0);

			if (FUNC2(field_name, test_name) == 0) {
				sort_key->field_idx = idx;
				descending = FUNC1(field_str);
				if (descending < 0) {
					ret = descending;
					goto out;
				}
				sort_key->descending = descending;
				break;
			}
		}
		if (j == hist_data->n_fields) {
			ret = -EINVAL;
			break;
		}
	}

	hist_data->n_sort_keys = i;
 out:
	return ret;
}