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
struct perf_sample {int dummy; } ;
struct hists {int dummy; } ;
struct hist_entry_iter {int /*<<< orphan*/  curr; struct hist_entry* he; int /*<<< orphan*/  parent; struct hist_entry** priv; struct perf_sample* sample; struct evsel* evsel; } ;
struct hist_entry {int /*<<< orphan*/  filtered; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  callchain_cursor ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hists* FUNC1 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC2 (struct hist_entry*,struct perf_sample*) ; 
 struct hist_entry* FUNC3 (struct hists*,struct addr_location*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct perf_sample*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hists*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct hist_entry_iter *iter,
				 struct addr_location *al)
{
	struct evsel *evsel = iter->evsel;
	struct hists *hists = FUNC1(evsel);
	struct perf_sample *sample = iter->sample;
	struct hist_entry **he_cache = iter->priv;
	struct hist_entry *he;
	int err = 0;

	he = FUNC3(hists, al, iter->parent, NULL, NULL,
			      sample, true);
	if (he == NULL)
		return -ENOMEM;

	iter->he = he;
	he_cache[iter->curr++] = he;

	FUNC2(he, sample);

	/*
	 * We need to re-initialize the cursor since callchain_append()
	 * advanced the cursor to the end.
	 */
	FUNC0(&callchain_cursor);

	FUNC4(hists, he->filtered);

	return err;
}