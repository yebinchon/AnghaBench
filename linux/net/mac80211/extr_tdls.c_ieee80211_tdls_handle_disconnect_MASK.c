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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; } ;
struct ieee80211_sta {int /*<<< orphan*/  tdls; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NL80211_TDLS_TEARDOWN ; 
 int /*<<< orphan*/  WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE ; 
 struct ieee80211_sta* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct ieee80211_sub_if_data *sdata,
				      const u8 *peer, u16 reason)
{
	struct ieee80211_sta *sta;

	FUNC3();
	sta = FUNC0(&sdata->vif, peer);
	if (!sta || !sta->tdls) {
		FUNC4();
		return;
	}
	FUNC4();

	FUNC5(sdata, "disconnected from TDLS peer %pM (Reason: %u=%s)\n",
		 peer, reason,
		 FUNC1(reason));

	FUNC2(&sdata->vif, peer,
				    NL80211_TDLS_TEARDOWN,
				    WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE,
				    GFP_ATOMIC);
}