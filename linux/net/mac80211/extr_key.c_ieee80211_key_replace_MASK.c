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
struct sta_info {int ptk_idx; int /*<<< orphan*/ * gtk; int /*<<< orphan*/ * ptk; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/ * keys; int /*<<< orphan*/  default_mgmt_key; int /*<<< orphan*/  local; int /*<<< orphan*/  default_multicast_key; int /*<<< orphan*/  default_unicast_key; int /*<<< orphan*/  key_list; } ;
struct TYPE_4__ {int keyidx; int flags; } ;
struct ieee80211_key {int flags; int /*<<< orphan*/  list; TYPE_2__ conf; TYPE_1__* local; } ;
struct TYPE_3__ {int /*<<< orphan*/  wowlan; } ;

/* Variables and functions */
 int IEEE80211_KEY_FLAG_NO_AUTO_TX ; 
 int KEY_FLAG_UPLOADED_TO_HARDWARE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WLAN_STA_BLOCK_BA ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_key*) ; 
 int FUNC7 (struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_key*,struct ieee80211_key*) ; 
 struct ieee80211_key* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct ieee80211_key*) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_sub_if_data *sdata,
				  struct sta_info *sta,
				  bool pairwise,
				  struct ieee80211_key *old,
				  struct ieee80211_key *new)
{
	int idx;
	int ret = 0;
	bool defunikey, defmultikey, defmgmtkey;

	/* caller must provide at least one old/new */
	if (FUNC0(!new && !old))
		return 0;

	if (new)
		FUNC10(&new->list, &sdata->key_list);

	FUNC0(new && old && new->conf.keyidx != old->conf.keyidx);

	if (new && sta && pairwise) {
		/* Unicast rekey needs special handling. With Extended Key ID
		 * old is still NULL for the first rekey.
		 */
		FUNC8(old, new);
	}

	if (old) {
		idx = old->conf.keyidx;

		if (old->flags & KEY_FLAG_UPLOADED_TO_HARDWARE) {
			FUNC6(old);

			if (new)
				ret = FUNC7(new);
		}
	} else {
		/* new must be provided in case old is not */
		idx = new->conf.keyidx;
		if (!new->local->wowlan)
			ret = FUNC7(new);
	}

	if (ret)
		return ret;

	if (sta) {
		if (pairwise) {
			FUNC12(sta->ptk[idx], new);
			if (new &&
			    !(new->conf.flags & IEEE80211_KEY_FLAG_NO_AUTO_TX)) {
				sta->ptk_idx = idx;
				FUNC3(sta, WLAN_STA_BLOCK_BA);
				FUNC5(sta);
			}
		} else {
			FUNC12(sta->gtk[idx], new);
		}
		/* Only needed for transition from no key -> key.
		 * Still triggers unnecessary when using Extended Key ID
		 * and installing the second key ID the first time.
		 */
		if (new && !old)
			FUNC4(sta);
	} else {
		defunikey = old &&
			old == FUNC9(sdata->local,
						sdata->default_unicast_key);
		defmultikey = old &&
			old == FUNC9(sdata->local,
						sdata->default_multicast_key);
		defmgmtkey = old &&
			old == FUNC9(sdata->local,
						sdata->default_mgmt_key);

		if (defunikey && !new)
			FUNC1(sdata, -1, true, false);
		if (defmultikey && !new)
			FUNC1(sdata, -1, false, true);
		if (defmgmtkey && !new)
			FUNC2(sdata, -1);

		FUNC12(sdata->keys[idx], new);
		if (defunikey && new)
			FUNC1(sdata, new->conf.keyidx,
						    true, false);
		if (defmultikey && new)
			FUNC1(sdata, new->conf.keyidx,
						    false, true);
		if (defmgmtkey && new)
			FUNC2(sdata,
							 new->conf.keyidx);
	}

	if (old)
		FUNC11(&old->list);

	return 0;
}