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
struct cfg80211_sched_scan_request {int /*<<< orphan*/  list; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  sched_scan_req_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct cfg80211_registered_device *rdev,
				 struct cfg80211_sched_scan_request *req)
{
	FUNC0();

	FUNC1(&req->list, &rdev->sched_scan_req_list);
}