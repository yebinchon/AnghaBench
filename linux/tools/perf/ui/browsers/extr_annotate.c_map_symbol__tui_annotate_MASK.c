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
struct map_symbol {int /*<<< orphan*/  map; int /*<<< orphan*/  sym; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {int dummy; } ;
struct annotation_options {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evsel*,struct hist_browser_timer*,struct annotation_options*) ; 

int FUNC1(struct map_symbol *ms, struct evsel *evsel,
			     struct hist_browser_timer *hbt,
			     struct annotation_options *opts)
{
	return FUNC0(ms->sym, ms->map, evsel, hbt, opts);
}