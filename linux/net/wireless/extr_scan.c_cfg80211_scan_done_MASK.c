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
struct cfg80211_scan_info {int dummy; } ;
struct cfg80211_scan_request {int notified; int /*<<< orphan*/  wiphy; struct cfg80211_scan_info info; } ;
struct TYPE_2__ {int /*<<< orphan*/  scan_done_wk; struct cfg80211_scan_request* scan_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_scan_request*,struct cfg80211_scan_info*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct cfg80211_scan_request *request,
			struct cfg80211_scan_info *info)
{
	FUNC2(request, info);
	FUNC0(request != FUNC3(request->wiphy)->scan_req);

	request->info = *info;
	request->notified = true;
	FUNC1(cfg80211_wq, &FUNC3(request->wiphy)->scan_done_wk);
}