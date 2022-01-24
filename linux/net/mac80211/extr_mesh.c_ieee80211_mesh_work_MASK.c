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
struct TYPE_3__ {int /*<<< orphan*/  dot11MeshHWMPpreqMinInterval; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  wrkq_flags; TYPE_1__ mshcfg; scalar_t__ last_preq; scalar_t__ preq_queue_len; int /*<<< orphan*/  mesh_id_len; } ;
struct TYPE_4__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESH_WORK_DRIFT_ADJUST ; 
 int /*<<< orphan*/  MESH_WORK_HOUSEKEEPING ; 
 int /*<<< orphan*/  MESH_WORK_MBSS_CHANGED ; 
 int /*<<< orphan*/  MESH_WORK_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC10(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

	FUNC6(sdata);

	/* mesh already went down */
	if (!sdata->u.mesh.mesh_id_len)
		goto out;

	if (ifmsh->preq_queue_len &&
	    FUNC9(jiffies,
		       ifmsh->last_preq + FUNC5(ifmsh->mshcfg.dot11MeshHWMPpreqMinInterval)))
		FUNC3(sdata);

	if (FUNC8(MESH_WORK_HOUSEKEEPING, &ifmsh->wrkq_flags))
		FUNC0(sdata);

	if (FUNC8(MESH_WORK_ROOT, &ifmsh->wrkq_flags))
		FUNC1(sdata);

	if (FUNC8(MESH_WORK_DRIFT_ADJUST, &ifmsh->wrkq_flags))
		FUNC4(sdata);

	if (FUNC8(MESH_WORK_MBSS_CHANGED, &ifmsh->wrkq_flags))
		FUNC2(sdata);
out:
	FUNC7(sdata);
}