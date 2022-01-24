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
struct perf_event_attr {int config; int /*<<< orphan*/  type; } ;
struct parse_events_error {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_NAME_LEN ; 
 int /*<<< orphan*/  PERF_COUNT_HW_CACHE_MAX ; 
 int /*<<< orphan*/  PERF_COUNT_HW_CACHE_OP_MAX ; 
 int PERF_COUNT_HW_CACHE_OP_READ ; 
 int PERF_COUNT_HW_CACHE_RESULT_ACCESS ; 
 int /*<<< orphan*/  PERF_COUNT_HW_CACHE_RESULT_MAX ; 
 int /*<<< orphan*/  PERF_TYPE_HW_CACHE ; 
 int FUNC1 (struct list_head*,int*,struct perf_event_attr*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct perf_event_attr*,struct list_head*,struct parse_events_error*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_term_common ; 
 int /*<<< orphan*/  config_terms ; 
 char* FUNC3 (struct list_head*) ; 
 scalar_t__ FUNC4 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_evsel__hw_cache ; 
 int /*<<< orphan*/  perf_evsel__hw_cache_op ; 
 int /*<<< orphan*/  perf_evsel__hw_cache_result ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (char*,int,char*,char*) ; 

int FUNC9(struct list_head *list, int *idx,
			   char *type, char *op_result1, char *op_result2,
			   struct parse_events_error *err,
			   struct list_head *head_config)
{
	struct perf_event_attr attr;
	FUNC0(config_terms);
	char name[MAX_NAME_LEN], *config_name;
	int cache_type = -1, cache_op = -1, cache_result = -1;
	char *op_result[2] = { op_result1, op_result2 };
	int i, n;

	/*
	 * No fallback - if we cannot get a clear cache type
	 * then bail out:
	 */
	cache_type = FUNC6(type, perf_evsel__hw_cache,
				   PERF_COUNT_HW_CACHE_MAX);
	if (cache_type == -1)
		return -EINVAL;

	config_name = FUNC3(head_config);
	n = FUNC8(name, MAX_NAME_LEN, "%s", type);

	for (i = 0; (i < 2) && (op_result[i]); i++) {
		char *str = op_result[i];

		n += FUNC8(name + n, MAX_NAME_LEN - n, "-%s", str);

		if (cache_op == -1) {
			cache_op = FUNC6(str, perf_evsel__hw_cache_op,
						 PERF_COUNT_HW_CACHE_OP_MAX);
			if (cache_op >= 0) {
				if (!FUNC7(cache_type, cache_op))
					return -EINVAL;
				continue;
			}
		}

		if (cache_result == -1) {
			cache_result = FUNC6(str, perf_evsel__hw_cache_result,
						     PERF_COUNT_HW_CACHE_RESULT_MAX);
			if (cache_result >= 0)
				continue;
		}
	}

	/*
	 * Fall back to reads:
	 */
	if (cache_op == -1)
		cache_op = PERF_COUNT_HW_CACHE_OP_READ;

	/*
	 * Fall back to accesses:
	 */
	if (cache_result == -1)
		cache_result = PERF_COUNT_HW_CACHE_RESULT_ACCESS;

	FUNC5(&attr, 0, sizeof(attr));
	attr.config = cache_type | (cache_op << 8) | (cache_result << 16);
	attr.type = PERF_TYPE_HW_CACHE;

	if (head_config) {
		if (FUNC2(&attr, head_config, err,
				config_term_common))
			return -EINVAL;

		if (FUNC4(head_config, &config_terms))
			return -ENOMEM;
	}
	return FUNC1(list, idx, &attr, config_name ? : name, &config_terms);
}