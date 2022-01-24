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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int driver_smps_mode; int /*<<< orphan*/  tdls_peer_del_work; int /*<<< orphan*/  tdls_peer; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; int /*<<< orphan*/  hw; } ;
typedef  enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;

/* Variables and functions */
 int EBUSY ; 
 int ENOLINK ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int IEEE80211_SMPS_AUTOMATIC ; 
 int IEEE80211_SMPS_OFF ; 
 int /*<<< orphan*/  TDLS_PEER_SETUP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wiphy*,struct net_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_sub_if_data*,char*,int) ; 

__attribute__((used)) static int
FUNC14(struct wiphy *wiphy, struct net_device *dev,
			  const u8 *peer, u8 action_code, u8 dialog_token,
			  u16 status_code, u32 peer_capability, bool initiator,
			  const u8 *extra_ies, size_t extra_ies_len)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	enum ieee80211_smps_mode smps_mode = sdata->u.mgd.driver_smps_mode;
	int ret;

	/* don't support setup with forced SMPS mode that's not off */
	if (smps_mode != IEEE80211_SMPS_AUTOMATIC &&
	    smps_mode != IEEE80211_SMPS_OFF) {
		FUNC13(sdata, "Aborting TDLS setup due to SMPS mode %d\n",
			 smps_mode);
		return -ENOTSUPP;
	}

	FUNC8(&local->mtx);

	/* we don't support concurrent TDLS peer setups */
	if (!FUNC6(sdata->u.mgd.tdls_peer) &&
	    !FUNC2(sdata->u.mgd.tdls_peer, peer)) {
		ret = -EBUSY;
		goto out_unlock;
	}

	/*
	 * make sure we have a STA representing the peer so we drop or buffer
	 * non-TDLS-setup frames to the peer. We can't send other packets
	 * during setup through the AP path.
	 * Allow error packets to be sent - sometimes we don't even add a STA
	 * before failing the setup.
	 */
	if (status_code == 0) {
		FUNC10();
		if (!FUNC12(sdata, peer)) {
			FUNC11();
			ret = -ENOLINK;
			goto out_unlock;
		}
		FUNC11();
	}

	FUNC3(local, sdata, false);
	FUNC7(sdata->u.mgd.tdls_peer, peer, ETH_ALEN);
	FUNC9(&local->mtx);

	/* we cannot take the mutex while preparing the setup packet */
	ret = FUNC5(wiphy, dev, peer, action_code,
					      dialog_token, status_code,
					      peer_capability, initiator,
					      extra_ies, extra_ies_len, 0,
					      NULL);
	if (ret < 0) {
		FUNC8(&local->mtx);
		FUNC1(sdata->u.mgd.tdls_peer);
		FUNC9(&local->mtx);
		return ret;
	}

	FUNC4(&sdata->local->hw,
				     &sdata->u.mgd.tdls_peer_del_work,
				     TDLS_PEER_SETUP_TIMEOUT);
	return 0;

out_unlock:
	FUNC9(&local->mtx);
	return ret;
}