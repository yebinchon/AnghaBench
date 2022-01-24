#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ieee80211_if_managed {TYPE_7__* auth_data; } ;
struct TYPE_9__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_8__* local; int /*<<< orphan*/  dev; TYPE_1__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  status_code; int /*<<< orphan*/  auth_transaction; int /*<<< orphan*/  auth_alg; } ;
struct TYPE_12__ {TYPE_3__ auth; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  sa; TYPE_4__ u; int /*<<< orphan*/  bssid; } ;
struct TYPE_13__ {int reason; int /*<<< orphan*/  status; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_5__ mlme; } ;
struct ieee80211_event {TYPE_6__ u; int /*<<< orphan*/  type; } ;
struct TYPE_16__ {int /*<<< orphan*/  sta_mtx; } ;
struct TYPE_15__ {int algorithm; int expected_transaction; int peer_confirmed; TYPE_2__* bss; scalar_t__ done; } ;
struct TYPE_10__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_EVENT ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MLME_DENIED ; 
 int /*<<< orphan*/  MLME_EVENT ; 
 int /*<<< orphan*/  MLME_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
#define  WLAN_AUTH_FILS_PK 135 
#define  WLAN_AUTH_FILS_SK 134 
#define  WLAN_AUTH_FILS_SK_PFS 133 
#define  WLAN_AUTH_FT 132 
#define  WLAN_AUTH_LEAP 131 
#define  WLAN_AUTH_OPEN 130 
#define  WLAN_AUTH_SAE 129 
#define  WLAN_AUTH_SHARED_KEY 128 
 int WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,struct ieee80211_sub_if_data*,struct ieee80211_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_sub_if_data*,char*,...) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_sub_if_data *sdata,
				   struct ieee80211_mgmt *mgmt, size_t len)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	u8 bssid[ETH_ALEN];
	u16 auth_alg, auth_transaction, status_code;
	struct ieee80211_event event = {
		.type = MLME_EVENT,
		.u.mlme.data = AUTH_EVENT,
	};

	FUNC10(sdata);

	if (len < 24 + 6)
		return;

	if (!ifmgd->auth_data || ifmgd->auth_data->done)
		return;

	FUNC8(bssid, ifmgd->auth_data->bss->bssid, ETH_ALEN);

	if (!FUNC3(bssid, mgmt->bssid))
		return;

	auth_alg = FUNC7(mgmt->u.auth.auth_alg);
	auth_transaction = FUNC7(mgmt->u.auth.auth_transaction);
	status_code = FUNC7(mgmt->u.auth.status_code);

	if (auth_alg != ifmgd->auth_data->algorithm ||
	    (auth_alg != WLAN_AUTH_SAE &&
	     auth_transaction != ifmgd->auth_data->expected_transaction) ||
	    (auth_alg == WLAN_AUTH_SAE &&
	     (auth_transaction < ifmgd->auth_data->expected_transaction ||
	      auth_transaction > 2))) {
		FUNC11(sdata, "%pM unexpected authentication state: alg %d (expected %d) transact %d (expected %d)\n",
			   mgmt->sa, auth_alg, ifmgd->auth_data->algorithm,
			   auth_transaction,
			   ifmgd->auth_data->expected_transaction);
		return;
	}

	if (status_code != WLAN_STATUS_SUCCESS) {
		FUNC11(sdata, "%pM denied authentication (status %d)\n",
			   mgmt->sa, status_code);
		FUNC5(sdata, false);
		FUNC1(sdata->dev, (u8 *)mgmt, len);
		event.u.mlme.status = MLME_DENIED;
		event.u.mlme.reason = status_code;
		FUNC2(sdata->local, sdata, &event);
		return;
	}

	switch (ifmgd->auth_data->algorithm) {
	case WLAN_AUTH_OPEN:
	case WLAN_AUTH_LEAP:
	case WLAN_AUTH_FT:
	case WLAN_AUTH_SAE:
	case WLAN_AUTH_FILS_SK:
	case WLAN_AUTH_FILS_SK_PFS:
	case WLAN_AUTH_FILS_PK:
		break;
	case WLAN_AUTH_SHARED_KEY:
		if (ifmgd->auth_data->expected_transaction != 4) {
			FUNC4(sdata, mgmt, len);
			/* need another frame */
			return;
		}
		break;
	default:
		FUNC0(1, "invalid auth alg %d",
			  ifmgd->auth_data->algorithm);
		return;
	}

	event.u.mlme.status = MLME_SUCCESS;
	FUNC2(sdata->local, sdata, &event);
	if (ifmgd->auth_data->algorithm != WLAN_AUTH_SAE ||
	    (auth_transaction == 2 &&
	     ifmgd->auth_data->expected_transaction == 2)) {
		if (!FUNC6(sdata, bssid))
			goto out_err;
	} else if (ifmgd->auth_data->algorithm == WLAN_AUTH_SAE &&
		   auth_transaction == 2) {
		FUNC11(sdata, "SAE peer confirmed\n");
		ifmgd->auth_data->peer_confirmed = true;
	}

	FUNC1(sdata->dev, (u8 *)mgmt, len);
	return;
 out_err:
	FUNC9(&sdata->local->sta_mtx);
	/* ignore frame -- wait for timeout */
}