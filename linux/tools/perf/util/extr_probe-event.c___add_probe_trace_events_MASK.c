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
struct strlist {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  symbol; } ;
struct probe_trace_event {TYPE_1__ point; scalar_t__ uprobes; } ;
struct probe_cache {int dummy; } ;
struct perf_probe_event {int /*<<< orphan*/  nsi; int /*<<< orphan*/  target; scalar_t__ uprobes; } ;
struct nscookie {int dummy; } ;
struct TYPE_4__ {scalar_t__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int,struct strlist**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC3 (struct nscookie*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct probe_cache*,struct perf_probe_event*,struct probe_trace_event*,int) ; 
 scalar_t__ FUNC6 (struct probe_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct probe_cache*) ; 
 struct probe_cache* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ probe_conf ; 
 int FUNC9 (int,struct probe_trace_event*) ; 
 int FUNC10 (struct probe_trace_event*,struct perf_probe_event*,struct strlist*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strlist*) ; 
 int /*<<< orphan*/  FUNC12 (struct probe_trace_event*) ; 

__attribute__((used)) static int FUNC13(struct perf_probe_event *pev,
				     struct probe_trace_event *tevs,
				     int ntevs, bool allow_suffix)
{
	int i, fd[2] = {-1, -1}, up, ret;
	struct probe_trace_event *tev = NULL;
	struct probe_cache *cache = NULL;
	struct strlist *namelist[2] = {NULL, NULL};
	struct nscookie nsc;

	up = pev->uprobes ? 1 : 0;
	fd[up] = FUNC0(up, &namelist[up]);
	if (fd[up] < 0)
		return fd[up];

	ret = 0;
	for (i = 0; i < ntevs; i++) {
		tev = &tevs[i];
		up = tev->uprobes ? 1 : 0;
		if (fd[up] == -1) {	/* Open the kprobe/uprobe_events */
			fd[up] = FUNC0(up,
								&namelist[up]);
			if (fd[up] < 0)
				goto close_out;
		}
		/* Skip if the symbol is out of .text or blacklisted */
		if (!tev->point.symbol && !pev->uprobes)
			continue;

		/* Set new name for tev (and update namelist) */
		ret = FUNC10(tev, pev, namelist[up],
						  allow_suffix);
		if (ret < 0)
			break;

		FUNC2(pev->nsi, &nsc);
		ret = FUNC9(fd[up], tev);
		FUNC3(&nsc);
		if (ret < 0)
			break;

		/*
		 * Probes after the first probe which comes from same
		 * user input are always allowed to add suffix, because
		 * there might be several addresses corresponding to
		 * one code line.
		 */
		allow_suffix = true;
	}
	if (ret == -EINVAL && pev->uprobes)
		FUNC12(tev);
	if (ret == 0 && probe_conf.cache) {
		cache = FUNC8(pev->target, pev->nsi);
		if (!cache ||
		    FUNC5(cache, pev, tevs, ntevs) < 0 ||
		    FUNC6(cache) < 0)
			FUNC4("Failed to add event to probe cache\n");
		FUNC7(cache);
	}

close_out:
	for (up = 0; up < 2; up++) {
		FUNC11(namelist[up]);
		if (fd[up] >= 0)
			FUNC1(fd[up]);
	}
	return ret;
}