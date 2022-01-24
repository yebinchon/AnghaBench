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
struct nfs4_flexfile_layout {void* last_report_time; } ;
struct nfs4_ff_layoutstat {int /*<<< orphan*/  busy_timer; } ;
struct nfs4_ff_layout_mirror {scalar_t__ report_interval; void* start_time; int /*<<< orphan*/  layout; } ;
typedef  long long s64 ;
typedef  void* ktime_t ;

/* Variables and functions */
 long long FF_LAYOUTSTATS_REPORT_INTERVAL ; 
 struct nfs4_flexfile_layout* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 long long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ layoutstats_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static bool
FUNC4(struct nfs4_ff_layout_mirror *mirror,
			    struct nfs4_ff_layoutstat *layoutstat,
			    ktime_t now)
{
	s64 report_interval = FF_LAYOUTSTATS_REPORT_INTERVAL;
	struct nfs4_flexfile_layout *ffl = FUNC0(mirror->layout);

	FUNC3(&layoutstat->busy_timer, now);
	if (!mirror->start_time)
		mirror->start_time = now;
	if (mirror->report_interval != 0)
		report_interval = (s64)mirror->report_interval * 1000LL;
	else if (layoutstats_timer != 0)
		report_interval = (s64)layoutstats_timer * 1000LL;
	if (FUNC2(FUNC1(now, ffl->last_report_time)) >=
			report_interval) {
		ffl->last_report_time = now;
		return true;
	}

	return false;
}