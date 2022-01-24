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
struct ieee80211_sub_if_data {int /*<<< orphan*/  dec_tailroom_needed_wk; int /*<<< orphan*/  crypto_tx_tailroom_pending_dec; } ;
struct ieee80211_key {struct ieee80211_sub_if_data* sdata; scalar_t__ local; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_key *key,
				    bool delay_tailroom)
{
	if (key->local) {
		struct ieee80211_sub_if_data *sdata = key->sdata;

		FUNC1(key);

		if (delay_tailroom) {
			/* see ieee80211_delayed_tailroom_dec */
			sdata->crypto_tx_tailroom_pending_dec++;
			FUNC3(&sdata->dec_tailroom_needed_wk,
					      HZ/2);
		} else {
			FUNC0(sdata, 1);
		}
	}

	FUNC2(key);
}