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
struct perf_annotate {int /*<<< orphan*/  opts; int /*<<< orphan*/  use_stdio2; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; int /*<<< orphan*/  sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evsel*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evsel*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hist_entry *he,
				    struct evsel *evsel,
				    struct perf_annotate *ann)
{
	if (!ann->use_stdio2)
		return FUNC0(he->ms.sym, he->ms.map, evsel, &ann->opts);

	return FUNC1(he->ms.sym, he->ms.map, evsel, &ann->opts);
}