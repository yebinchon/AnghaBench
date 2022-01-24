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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ogm_append_cnt; int /*<<< orphan*/  vn; int /*<<< orphan*/  local_changes; int /*<<< orphan*/  commit_lock; } ;
struct batadv_priv {TYPE_1__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_DBG_TT ; 
 int /*<<< orphan*/  BATADV_TT_CLIENT_NEW ; 
 int /*<<< orphan*/  BATADV_TT_OGM_APPEND_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct batadv_priv *bat_priv)
{
	FUNC9(&bat_priv->tt.commit_lock);

	if (FUNC1(&bat_priv->tt.local_changes) < 1) {
		if (!FUNC3(&bat_priv->tt.ogm_append_cnt))
			FUNC8(bat_priv);
		return;
	}

	FUNC6(bat_priv, BATADV_TT_CLIENT_NEW, false, true);

	FUNC5(bat_priv);
	FUNC7(bat_priv);

	/* Increment the TTVN only once per OGM interval */
	FUNC0(&bat_priv->tt.vn);
	FUNC4(BATADV_DBG_TT, bat_priv,
		   "Local changes committed, updating to ttvn %u\n",
		   (u8)FUNC1(&bat_priv->tt.vn));

	/* reset the sending counter */
	FUNC2(&bat_priv->tt.ogm_append_cnt, BATADV_TT_OGM_APPEND_MAX);
	FUNC8(bat_priv);
}