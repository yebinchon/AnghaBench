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
typedef  union perf_event {int dummy; } perf_event ;
struct record_opts {scalar_t__ overwrite; } ;
struct TYPE_2__ {int rotate; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  in; } ;
struct perf_top {TYPE_1__ qe; struct evlist* evlist; struct record_opts record_opts; } ;
struct mmap {int dummy; } ;
struct evlist {struct mmap* mmap; struct mmap* overwrite_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  last_timestamp ; 
 int FUNC0 (int /*<<< orphan*/ ,union perf_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct evlist*,union perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmap*) ; 
 union perf_event* FUNC4 (struct mmap*) ; 
 scalar_t__ FUNC5 (struct mmap*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct perf_top *top, int idx)
{
	struct record_opts *opts = &top->record_opts;
	struct evlist *evlist = top->evlist;
	struct mmap *md;
	union perf_event *event;

	md = opts->overwrite ? &evlist->overwrite_mmap[idx] : &evlist->mmap[idx];
	if (FUNC5(md) < 0)
		return;

	while ((event = FUNC4(md)) != NULL) {
		int ret;

		ret = FUNC1(evlist, event, &last_timestamp);
		if (ret && ret != -1)
			break;

		ret = FUNC0(top->qe.in, event, last_timestamp, 0);
		if (ret)
			break;

		FUNC2(md);

		if (top->qe.rotate) {
			FUNC7(&top->qe.mutex);
			top->qe.rotate = false;
			FUNC6(&top->qe.cond);
			FUNC8(&top->qe.mutex);
		}
	}

	FUNC3(md);
}