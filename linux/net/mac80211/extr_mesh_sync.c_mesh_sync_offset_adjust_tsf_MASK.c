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
struct ieee80211_if_mesh {scalar_t__ mesh_sp_id; scalar_t__ sync_offset_clockdrift_max; int /*<<< orphan*/  sync_offset_lock; int /*<<< orphan*/  wrkq_flags; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct beacon_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET ; 
 int /*<<< orphan*/  MESH_WORK_DRIFT_ADJUST ; 
 scalar_t__ TOFFSET_MINIMUM_ADJUSTMENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,char*,long long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_sub_if_data *sdata,
					 struct beacon_data *beacon)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

	FUNC0(ifmsh->mesh_sp_id != IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET);
	FUNC0(!FUNC2());

	FUNC4(&ifmsh->sync_offset_lock);

	if (ifmsh->sync_offset_clockdrift_max > TOFFSET_MINIMUM_ADJUSTMENT) {
		/* Since ajusting the tsf here would
		 * require a possibly blocking call
		 * to the driver tsf setter, we punt
		 * the tsf adjustment to the mesh tasklet
		 */
		FUNC1(sdata,
			  "TSF : kicking off TSF adjustment with clockdrift_max=%lld\n",
			  ifmsh->sync_offset_clockdrift_max);
		FUNC3(MESH_WORK_DRIFT_ADJUST, &ifmsh->wrkq_flags);
	} else {
		FUNC1(sdata,
			  "TSF : max clockdrift=%lld; too small to adjust\n",
			  (long long)ifmsh->sync_offset_clockdrift_max);
		ifmsh->sync_offset_clockdrift_max = 0;
	}
	FUNC5(&ifmsh->sync_offset_lock);
}