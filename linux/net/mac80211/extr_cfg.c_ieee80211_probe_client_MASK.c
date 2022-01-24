#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct wiphy {int dummy; } ;
struct TYPE_9__ {int wme; int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_4__ sta; } ;
struct sk_buff {int priority; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct ieee80211_tx_info {int flags; int band; } ;
struct TYPE_10__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; struct ieee80211_local* local; } ;
struct ieee80211_qos_hdr {void* qos_ctrl; scalar_t__ seq_ctrl; int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; scalar_t__ duration_id; void* frame_control; } ;
struct TYPE_8__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {int /*<<< orphan*/  mtx; TYPE_3__ hw; } ;
struct TYPE_7__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
typedef  void* __le16 ;
struct TYPE_6__ {int band; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOLINK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IEEE80211_AC_VO ; 
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int IEEE80211_FCTL_FROMDS ; 
 int IEEE80211_FTYPE_DATA ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_STYPE_NULLFUNC ; 
 int IEEE80211_STYPE_QOS_NULLFUNC ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int IEEE80211_TX_INTFL_NL80211_FRAME_TX ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 struct sk_buff* FUNC4 (scalar_t__) ; 
 int FUNC5 (struct ieee80211_local*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,struct sta_info*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct ieee80211_chanctx_conf* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct ieee80211_qos_hdr* FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC19 (struct ieee80211_sub_if_data*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC20(struct wiphy *wiphy, struct net_device *dev,
				  const u8 *peer, u64 *cookie)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_qos_hdr *nullfunc;
	struct sk_buff *skb;
	int size = sizeof(*nullfunc);
	__le16 fc;
	bool qos;
	struct ieee80211_tx_info *info;
	struct sta_info *sta;
	struct ieee80211_chanctx_conf *chanctx_conf;
	enum nl80211_band band;
	int ret;

	/* the lock is needed to assign the cookie later */
	FUNC11(&local->mtx);

	FUNC14();
	chanctx_conf = FUNC13(sdata->vif.chanctx_conf);
	if (FUNC2(!chanctx_conf)) {
		ret = -EINVAL;
		goto unlock;
	}
	band = chanctx_conf->def.chan->band;
	sta = FUNC19(sdata, peer);
	if (sta) {
		qos = sta->sta.wme;
	} else {
		ret = -ENOLINK;
		goto unlock;
	}

	if (qos) {
		fc = FUNC3(IEEE80211_FTYPE_DATA |
				 IEEE80211_STYPE_QOS_NULLFUNC |
				 IEEE80211_FCTL_FROMDS);
	} else {
		size -= 2;
		fc = FUNC3(IEEE80211_FTYPE_DATA |
				 IEEE80211_STYPE_NULLFUNC |
				 IEEE80211_FCTL_FROMDS);
	}

	skb = FUNC4(local->hw.extra_tx_headroom + size);
	if (!skb) {
		ret = -ENOMEM;
		goto unlock;
	}

	skb->dev = dev;

	FUNC17(skb, local->hw.extra_tx_headroom);

	nullfunc = FUNC16(skb, size);
	nullfunc->frame_control = fc;
	nullfunc->duration_id = 0;
	FUNC10(nullfunc->addr1, sta->sta.addr, ETH_ALEN);
	FUNC10(nullfunc->addr2, sdata->vif.addr, ETH_ALEN);
	FUNC10(nullfunc->addr3, sdata->vif.addr, ETH_ALEN);
	nullfunc->seq_ctrl = 0;

	info = FUNC1(skb);

	info->flags |= IEEE80211_TX_CTL_REQ_TX_STATUS |
		       IEEE80211_TX_INTFL_NL80211_FRAME_TX;
	info->band = band;

	FUNC18(skb, IEEE80211_AC_VO);
	skb->priority = 7;
	if (qos)
		nullfunc->qos_ctrl = FUNC3(7);

	ret = FUNC5(local, skb, cookie, GFP_ATOMIC);
	if (ret) {
		FUNC7(skb);
		goto unlock;
	}

	FUNC8();
	FUNC6(sdata, sta, skb, 0);
	FUNC9();

	ret = 0;
unlock:
	FUNC15();
	FUNC12(&local->mtx);

	return ret;
}