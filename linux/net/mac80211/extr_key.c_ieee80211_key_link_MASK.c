#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int /*<<< orphan*/ * gtk; int /*<<< orphan*/ * ptk; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__* local; int /*<<< orphan*/ * keys; TYPE_1__ vif; } ;
struct TYPE_5__ {int keyidx; int flags; scalar_t__ cipher; } ;
struct ieee80211_key {struct sta_info* sta; struct ieee80211_sub_if_data* sdata; TYPE_3__* local; TYPE_2__ conf; } ;
struct TYPE_6__ {int /*<<< orphan*/  key_mtx; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_key*) ; 
 scalar_t__ FUNC4 (struct ieee80211_sub_if_data*,struct ieee80211_key*,struct ieee80211_key*) ; 
 int FUNC5 (struct ieee80211_sub_if_data*,struct sta_info*,int,struct ieee80211_key*,struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*) ; 
 struct ieee80211_key* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct ieee80211_key *key,
		       struct ieee80211_sub_if_data *sdata,
		       struct sta_info *sta)
{
	struct ieee80211_key *old_key;
	int idx = key->conf.keyidx;
	bool pairwise = key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE;
	/*
	 * We want to delay tailroom updates only for station - in that
	 * case it helps roaming speed, but in other cases it hurts and
	 * can cause warnings to appear.
	 */
	bool delay_tailroom = sdata->vif.type == NL80211_IFTYPE_STATION;
	int ret = -EOPNOTSUPP;

	FUNC8(&sdata->local->key_mtx);

	if (sta && pairwise) {
		struct ieee80211_key *alt_key;

		old_key = FUNC7(sdata->local, sta->ptk[idx]);
		alt_key = FUNC7(sdata->local, sta->ptk[idx ^ 1]);

		/* The rekey code assumes that the old and new key are using
		 * the same cipher. Enforce the assumption for pairwise keys.
		 */
		if ((alt_key && alt_key->conf.cipher != key->conf.cipher) ||
		    (old_key && old_key->conf.cipher != key->conf.cipher))
			goto out;
	} else if (sta) {
		old_key = FUNC7(sdata->local, sta->gtk[idx]);
	} else {
		old_key = FUNC7(sdata->local, sdata->keys[idx]);
	}

	/* Non-pairwise keys must also not switch the cipher on rekey */
	if (!pairwise) {
		if (old_key && old_key->conf.cipher != key->conf.cipher)
			goto out;
	}

	/*
	 * Silently accept key re-installation without really installing the
	 * new version of the key to avoid nonce reuse or replay issues.
	 */
	if (FUNC4(sdata, old_key, key)) {
		FUNC3(key);
		ret = 0;
		goto out;
	}

	key->local = sdata->local;
	key->sdata = sdata;
	key->sta = sta;

	FUNC6(sdata);

	ret = FUNC5(sdata, sta, pairwise, old_key, key);

	if (!ret) {
		FUNC0(key);
		FUNC1(old_key, delay_tailroom);
	} else {
		FUNC2(key, delay_tailroom);
	}

 out:
	FUNC9(&sdata->local->key_mtx);

	return ret;
}