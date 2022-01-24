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
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ mfp; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  wowlan; } ;
struct ieee80211_key_conf {int /*<<< orphan*/  flags; int /*<<< orphan*/  key; int /*<<< orphan*/  keylen; int /*<<< orphan*/  keyidx; int /*<<< orphan*/  cipher; } ;
struct ieee80211_key {struct ieee80211_key_conf conf; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ieee80211_key_conf* FUNC0 (struct ieee80211_key*) ; 
 struct ieee80211_key_conf* FUNC1 (int) ; 
 int /*<<< orphan*/  IEEE80211_KEY_FLAG_RX_MGMT ; 
 scalar_t__ IEEE80211_MFP_DISABLED ; 
 scalar_t__ FUNC2 (struct ieee80211_key*) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC3 (int) ; 
 struct ieee80211_key* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ieee80211_key*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC6 (struct ieee80211_vif*) ; 

struct ieee80211_key_conf *
FUNC7(struct ieee80211_vif *vif,
			struct ieee80211_key_conf *keyconf)
{
	struct ieee80211_sub_if_data *sdata = FUNC6(vif);
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_key *key;
	int err;

	if (FUNC3(!local->wowlan))
		return FUNC1(-EINVAL);

	if (FUNC3(vif->type != NL80211_IFTYPE_STATION))
		return FUNC1(-EINVAL);

	key = FUNC4(keyconf->cipher, keyconf->keyidx,
				  keyconf->keylen, keyconf->key,
				  0, NULL, NULL);
	if (FUNC2(key))
		return FUNC0(key);

	if (sdata->u.mgd.mfp != IEEE80211_MFP_DISABLED)
		key->conf.flags |= IEEE80211_KEY_FLAG_RX_MGMT;

	err = FUNC5(key, sdata, NULL);
	if (err)
		return FUNC1(err);

	return &key->conf;
}