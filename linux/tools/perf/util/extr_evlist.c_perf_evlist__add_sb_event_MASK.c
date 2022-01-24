#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_event_attr {int sample_id_all; } ;
struct TYPE_4__ {void* data; int /*<<< orphan*/  cb; } ;
struct evsel {TYPE_2__ side_band; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr_entries; } ;
struct evlist {TYPE_1__ core; } ;
typedef  int /*<<< orphan*/  perf_evsel__sb_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evlist*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (struct evlist*) ; 
 struct evlist* FUNC2 () ; 
 struct evsel* FUNC3 (struct perf_event_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct evlist **evlist,
			      struct perf_event_attr *attr,
			      perf_evsel__sb_cb_t cb,
			      void *data)
{
	struct evsel *evsel;
	bool new_evlist = (*evlist) == NULL;

	if (*evlist == NULL)
		*evlist = FUNC2();
	if (*evlist == NULL)
		return -1;

	if (!attr->sample_id_all) {
		FUNC4("enabling sample_id_all for all side band events\n");
		attr->sample_id_all = 1;
	}

	evsel = FUNC3(attr, (*evlist)->core.nr_entries);
	if (!evsel)
		goto out_err;

	evsel->side_band.cb = cb;
	evsel->side_band.data = data;
	FUNC0(*evlist, evsel);
	return 0;

out_err:
	if (new_evlist) {
		FUNC1(*evlist);
		*evlist = NULL;
	}
	return -1;
}