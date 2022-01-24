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
struct perf_pmu_info {int /*<<< orphan*/  metric_name; int /*<<< orphan*/  metric_expr; int /*<<< orphan*/  snapshot; int /*<<< orphan*/  per_pkg; int /*<<< orphan*/  scale; int /*<<< orphan*/  unit; } ;
struct perf_pmu {int /*<<< orphan*/  type; scalar_t__ is_uncore; scalar_t__ default_config; } ;
struct perf_event_attr {int /*<<< orphan*/  type; } ;
struct parse_events_state {int /*<<< orphan*/  idx; struct parse_events_error* error; } ;
struct parse_events_error {int /*<<< orphan*/ * str; } ;
struct list_head {int dummy; } ;
struct evsel {char* pmu_name; int use_uncore_alias; int /*<<< orphan*/  config_terms; int /*<<< orphan*/  percore; int /*<<< orphan*/  metric_name; int /*<<< orphan*/  metric_expr; int /*<<< orphan*/  snapshot; int /*<<< orphan*/  per_pkg; int /*<<< orphan*/  scale; int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct evsel* FUNC1 (struct list_head*,int /*<<< orphan*/ *,struct perf_event_attr*,int /*<<< orphan*/ *,struct perf_pmu*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,char*,char*) ; 
 scalar_t__ FUNC3 (struct perf_event_attr*,struct list_head*,struct parse_events_error*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  config_term_pmu ; 
 int /*<<< orphan*/  config_terms ; 
 int /*<<< orphan*/ * FUNC5 (struct list_head*) ; 
 scalar_t__ FUNC6 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event_attr*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct perf_pmu*,struct list_head*,struct perf_pmu_info*) ; 
 scalar_t__ FUNC10 (struct perf_pmu*,struct perf_event_attr*,struct list_head*,struct parse_events_error*) ; 
 struct perf_pmu* FUNC11 (char*) ; 

int FUNC12(struct parse_events_state *parse_state,
			 struct list_head *list, char *name,
			 struct list_head *head_config,
			 bool auto_merge_stats,
			 bool use_alias)
{
	struct perf_event_attr attr;
	struct perf_pmu_info info;
	struct perf_pmu *pmu;
	struct evsel *evsel;
	struct parse_events_error *err = parse_state->error;
	bool use_uncore_alias;
	FUNC0(config_terms);

	pmu = FUNC11(name);
	if (!pmu) {
		if (FUNC2(&err->str,
				"Cannot find PMU `%s'. Missing kernel support?",
				name) < 0)
			err->str = NULL;
		return -EINVAL;
	}

	if (pmu->default_config) {
		FUNC7(&attr, pmu->default_config,
		       sizeof(struct perf_event_attr));
	} else {
		FUNC8(&attr, 0, sizeof(attr));
	}

	use_uncore_alias = (pmu->is_uncore && use_alias);

	if (!head_config) {
		attr.type = pmu->type;
		evsel = FUNC1(list, &parse_state->idx, &attr, NULL, pmu, NULL,
				    auto_merge_stats, NULL);
		if (evsel) {
			evsel->pmu_name = name;
			evsel->use_uncore_alias = use_uncore_alias;
			return 0;
		} else {
			return -ENOMEM;
		}
	}

	if (FUNC9(pmu, head_config, &info))
		return -EINVAL;

	/*
	 * Configure hardcoded terms first, no need to check
	 * return value when called with fail == 0 ;)
	 */
	if (FUNC3(&attr, head_config, parse_state->error, config_term_pmu))
		return -EINVAL;

	if (FUNC6(head_config, &config_terms))
		return -ENOMEM;

	if (FUNC10(pmu, &attr, head_config, parse_state->error))
		return -EINVAL;

	evsel = FUNC1(list, &parse_state->idx, &attr,
			    FUNC5(head_config), pmu,
			    &config_terms, auto_merge_stats, NULL);
	if (evsel) {
		evsel->unit = info.unit;
		evsel->scale = info.scale;
		evsel->per_pkg = info.per_pkg;
		evsel->snapshot = info.snapshot;
		evsel->metric_expr = info.metric_expr;
		evsel->metric_name = info.metric_name;
		evsel->pmu_name = name;
		evsel->use_uncore_alias = use_uncore_alias;
		evsel->percore = FUNC4(&evsel->config_terms);
	}

	return evsel ? 0 : -ENOMEM;
}