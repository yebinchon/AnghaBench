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
struct cfg80211_registered_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_sched_scan_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC3(struct cfg80211_registered_device *rdev,
					struct cfg80211_sched_scan_request *req)
{
	FUNC0();

	FUNC2(&req->list);
	FUNC1(req, rcu_head);
}