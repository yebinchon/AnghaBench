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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct batadv_priv {TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_NO_FLAGS ; 
 int BATADV_TT_REMOTE_MASK ; 
 int BATADV_TT_SYNC_MASK ; 
 int /*<<< orphan*/  BATADV_TT_WORK_PERIOD ; 
 int /*<<< orphan*/  BATADV_TVLV_ROAM ; 
 int /*<<< orphan*/  BATADV_TVLV_TT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 int /*<<< orphan*/  batadv_roam_tvlv_unicast_handler_v1 ; 
 int FUNC2 (struct batadv_priv*) ; 
 int FUNC3 (struct batadv_priv*) ; 
 int /*<<< orphan*/  batadv_tt_purge ; 
 int /*<<< orphan*/ * batadv_tt_tvlv_ogm_handler_v1 ; 
 int /*<<< orphan*/  batadv_tt_tvlv_unicast_handler_v1 ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct batadv_priv *bat_priv)
{
	int ret;

	/* synchronized flags must be remote */
	FUNC0(!(BATADV_TT_SYNC_MASK & BATADV_TT_REMOTE_MASK));

	ret = FUNC3(bat_priv);
	if (ret < 0)
		return ret;

	ret = FUNC2(bat_priv);
	if (ret < 0)
		return ret;

	FUNC4(bat_priv, batadv_tt_tvlv_ogm_handler_v1,
				     batadv_tt_tvlv_unicast_handler_v1,
				     BATADV_TVLV_TT, 1, BATADV_NO_FLAGS);

	FUNC4(bat_priv, NULL,
				     batadv_roam_tvlv_unicast_handler_v1,
				     BATADV_TVLV_ROAM, 1, BATADV_NO_FLAGS);

	FUNC1(&bat_priv->tt.work, batadv_tt_purge);
	FUNC6(batadv_event_workqueue, &bat_priv->tt.work,
			   FUNC5(BATADV_TT_WORK_PERIOD));

	return 1;
}