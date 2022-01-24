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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ dot11MeshHWMPRootMode; int /*<<< orphan*/  dot11MeshHWMProotInterval; int /*<<< orphan*/  dot11MeshHWMPRannInterval; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  mesh_path_root_timer; TYPE_2__ mshcfg; } ;
struct TYPE_3__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_PROACTIVE_RANN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	u32 interval;

	FUNC1(sdata);

	if (ifmsh->mshcfg.dot11MeshHWMPRootMode == IEEE80211_PROACTIVE_RANN)
		interval = ifmsh->mshcfg.dot11MeshHWMPRannInterval;
	else
		interval = ifmsh->mshcfg.dot11MeshHWMProotInterval;

	FUNC2(&ifmsh->mesh_path_root_timer,
		  FUNC3(FUNC0(interval)));
}