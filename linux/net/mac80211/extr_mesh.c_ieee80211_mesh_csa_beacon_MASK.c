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
struct mesh_csa_settings {int /*<<< orphan*/  settings; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtx; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  csa; } ;
struct TYPE_3__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ wdev; TYPE_1__ u; } ;
struct cfg80211_csa_settings {int dummy; } ;

/* Variables and functions */
 int BSS_CHANGED_BEACON ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct mesh_csa_settings*,int /*<<< orphan*/ ) ; 
 struct mesh_csa_settings* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct cfg80211_csa_settings*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mesh_csa_settings*) ; 
 struct mesh_csa_settings* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

int FUNC8(struct ieee80211_sub_if_data *sdata,
			      struct cfg80211_csa_settings *csa_settings)
{
	struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
	struct mesh_csa_settings *tmp_csa_settings;
	int ret = 0;

	FUNC4(&sdata->wdev.mtx);

	tmp_csa_settings = FUNC3(sizeof(*tmp_csa_settings),
				   GFP_ATOMIC);
	if (!tmp_csa_settings)
		return -ENOMEM;

	FUNC5(&tmp_csa_settings->settings, csa_settings,
	       sizeof(struct cfg80211_csa_settings));

	FUNC6(ifmsh->csa, tmp_csa_settings);

	ret = FUNC1(sdata);
	if (ret) {
		tmp_csa_settings = FUNC7(ifmsh->csa);
		FUNC0(ifmsh->csa, NULL);
		FUNC2(tmp_csa_settings, rcu_head);
		return ret;
	}

	return BSS_CHANGED_BEACON;
}