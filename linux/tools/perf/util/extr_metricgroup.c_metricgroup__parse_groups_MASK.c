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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct rblist {scalar_t__ nr_entries; } ;
struct parse_events_error {int dummy; } ;
struct option {scalar_t__ value; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  group_list ; 
 int /*<<< orphan*/  FUNC1 (struct parse_events_error*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rblist*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct evlist*,struct rblist*) ; 
 int FUNC6 (struct evlist*,int /*<<< orphan*/ ,struct parse_events_error*) ; 
 int /*<<< orphan*/  FUNC7 (struct parse_events_error*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 

int FUNC10(const struct option *opt,
			   const char *str,
			   struct rblist *metric_events)
{
	struct parse_events_error parse_error;
	struct evlist *perf_evlist = *(struct evlist **)opt->value;
	struct strbuf extra_events;
	FUNC0(group_list);
	int ret;

	if (metric_events->nr_entries == 0)
		FUNC4(metric_events);
	ret = FUNC2(str, &extra_events, &group_list);
	if (ret)
		return ret;
	FUNC8("adding %s\n", extra_events.buf);
	FUNC1(&parse_error, 0, sizeof(struct parse_events_error));
	ret = FUNC6(perf_evlist, extra_events.buf, &parse_error);
	if (ret) {
		FUNC7(&parse_error, extra_events.buf);
		goto out;
	}
	FUNC9(&extra_events);
	ret = FUNC5(&group_list, perf_evlist,
					metric_events);
out:
	FUNC3(&group_list);
	return ret;
}