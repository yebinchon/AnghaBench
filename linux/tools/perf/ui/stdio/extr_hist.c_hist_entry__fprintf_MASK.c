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
typedef  int /*<<< orphan*/  u64 ;
struct perf_hpp {char* buf; size_t size; } ;
struct TYPE_3__ {int /*<<< orphan*/  total_period; } ;
struct hists {TYPE_1__ stats; } ;
struct hist_entry {struct hists* hists; } ;
struct TYPE_4__ {scalar_t__ report_block; scalar_t__ report_hierarchy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (struct hist_entry*,char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hist_entry*) ; 
 int FUNC3 (struct hist_entry*,struct perf_hpp*,struct hists*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hist_entry*,struct perf_hpp*) ; 
 int FUNC5 (struct hist_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ symbol_conf ; 

__attribute__((used)) static int FUNC6(struct hist_entry *he, size_t size,
			       char *bf, size_t bfsz, FILE *fp,
			       bool ignore_callchains)
{
	int ret;
	int callchain_ret = 0;
	struct perf_hpp hpp = {
		.buf		= bf,
		.size		= size,
	};
	struct hists *hists = he->hists;
	u64 total_period = hists->stats.total_period;

	if (size == 0 || size > bfsz)
		size = hpp.size = bfsz;

	if (symbol_conf.report_hierarchy)
		return FUNC3(he, &hpp, hists, fp);

	if (symbol_conf.report_block)
		return FUNC1(he, bf, size, fp);

	FUNC4(he, &hpp);

	ret = FUNC0(fp, "%s\n", bf);

	if (FUNC2(he) && !ignore_callchains)
		callchain_ret = FUNC5(he, total_period,
							      0, fp);

	ret += callchain_ret;

	return ret;
}