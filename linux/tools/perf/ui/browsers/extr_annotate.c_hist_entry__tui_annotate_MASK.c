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
struct hist_entry {int /*<<< orphan*/  ms; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {int dummy; } ;
struct annotation_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,struct evsel*,struct hist_browser_timer*,struct annotation_options*) ; 

int FUNC3(struct hist_entry *he, struct evsel *evsel,
			     struct hist_browser_timer *hbt,
			     struct annotation_options *opts)
{
	/* reset abort key so that it can get Ctrl-C as a key */
	FUNC1();
	FUNC0(0, 0, 0);

	return FUNC2(&he->ms, evsel, hbt, opts);
}