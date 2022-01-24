#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int iftype; struct cfg80211_internal_bss* current_bss; TYPE_1__* netdev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  skb; } ;
struct TYPE_7__ {int signal_type; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; int /*<<< orphan*/  bss_generation; } ;
struct cfg80211_bss {int /*<<< orphan*/  signal; int /*<<< orphan*/  chain_signal; int /*<<< orphan*/  chains; int /*<<< orphan*/  scan_width; TYPE_2__* channel; scalar_t__ capability; scalar_t__ beacon_interval; int /*<<< orphan*/  beacon_ies; int /*<<< orphan*/  ies; int /*<<< orphan*/  proberesp_ies; int /*<<< orphan*/  bssid; } ;
struct cfg80211_internal_bss {struct cfg80211_bss pub; scalar_t__ ts_boottime; int /*<<< orphan*/  parent_bssid; scalar_t__ parent_tsf; scalar_t__ ts; } ;
struct cfg80211_bss_ies {int /*<<< orphan*/  data; scalar_t__ len; scalar_t__ tsf; scalar_t__ from_beacon; } ;
struct TYPE_8__ {int /*<<< orphan*/  portid; } ;
struct TYPE_6__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
#define  CFG80211_SIGNAL_TYPE_MBM 132 
#define  CFG80211_SIGNAL_TYPE_UNSPEC 131 
 int EMSGSIZE ; 
 scalar_t__ ETH_ALEN ; 
 TYPE_4__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_ATTR_BSS ; 
 int /*<<< orphan*/  NL80211_ATTR_GENERATION ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_BSS_BEACON_IES ; 
 int /*<<< orphan*/  NL80211_BSS_BEACON_INTERVAL ; 
 int /*<<< orphan*/  NL80211_BSS_BEACON_TSF ; 
 int /*<<< orphan*/  NL80211_BSS_BSSID ; 
 int /*<<< orphan*/  NL80211_BSS_CAPABILITY ; 
 int /*<<< orphan*/  NL80211_BSS_CHAIN_SIGNAL ; 
 int /*<<< orphan*/  NL80211_BSS_CHAN_WIDTH ; 
 int /*<<< orphan*/  NL80211_BSS_FREQUENCY ; 
 int /*<<< orphan*/  NL80211_BSS_INFORMATION_ELEMENTS ; 
 int /*<<< orphan*/  NL80211_BSS_LAST_SEEN_BOOTTIME ; 
 int /*<<< orphan*/  NL80211_BSS_PAD ; 
 int /*<<< orphan*/  NL80211_BSS_PARENT_BSSID ; 
 int /*<<< orphan*/  NL80211_BSS_PARENT_TSF ; 
 int /*<<< orphan*/  NL80211_BSS_PRESP_DATA ; 
 int /*<<< orphan*/  NL80211_BSS_SEEN_MS_AGO ; 
 int /*<<< orphan*/  NL80211_BSS_SIGNAL_MBM ; 
 int /*<<< orphan*/  NL80211_BSS_SIGNAL_UNSPEC ; 
 int /*<<< orphan*/  NL80211_BSS_STATUS ; 
 int /*<<< orphan*/  NL80211_BSS_STATUS_ASSOCIATED ; 
 int /*<<< orphan*/  NL80211_BSS_STATUS_IBSS_JOINED ; 
 int /*<<< orphan*/  NL80211_BSS_TSF ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_SCAN_RESULTS ; 
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_P2P_CLIENT 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC2 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 struct cfg80211_bss_ies* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *msg, struct netlink_callback *cb,
			    u32 seq, int flags,
			    struct cfg80211_registered_device *rdev,
			    struct wireless_dev *wdev,
			    struct cfg80211_internal_bss *intbss)
{
	struct cfg80211_bss *res = &intbss->pub;
	const struct cfg80211_bss_ies *ies;
	void *hdr;
	struct nlattr *bss;

	FUNC0(wdev);

	hdr = FUNC8(msg, FUNC1(cb->skb).portid, seq, flags,
			     NL80211_CMD_NEW_SCAN_RESULTS);
	if (!hdr)
		return -1;

	FUNC2(cb, hdr);

	if (FUNC14(msg, NL80211_ATTR_GENERATION, rdev->bss_generation))
		goto nla_put_failure;
	if (wdev->netdev &&
	    FUNC14(msg, NL80211_ATTR_IFINDEX, wdev->netdev->ifindex))
		goto nla_put_failure;
	if (FUNC15(msg, NL80211_ATTR_WDEV, FUNC21(wdev),
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	bss = FUNC10(msg, NL80211_ATTR_BSS);
	if (!bss)
		goto nla_put_failure;
	if ((!FUNC5(res->bssid) &&
	     FUNC11(msg, NL80211_BSS_BSSID, ETH_ALEN, res->bssid)))
		goto nla_put_failure;

	FUNC19();
	/* indicate whether we have probe response data or not */
	if (FUNC17(res->proberesp_ies) &&
	    FUNC12(msg, NL80211_BSS_PRESP_DATA))
		goto fail_unlock_rcu;

	/* this pointer prefers to be pointed to probe response data
	 * but is always valid
	 */
	ies = FUNC18(res->ies);
	if (ies) {
		if (FUNC15(msg, NL80211_BSS_TSF, ies->tsf,
				      NL80211_BSS_PAD))
			goto fail_unlock_rcu;
		if (ies->len && FUNC11(msg, NL80211_BSS_INFORMATION_ELEMENTS,
					ies->len, ies->data))
			goto fail_unlock_rcu;
	}

	/* and this pointer is always (unless driver didn't know) beacon data */
	ies = FUNC18(res->beacon_ies);
	if (ies && ies->from_beacon) {
		if (FUNC15(msg, NL80211_BSS_BEACON_TSF, ies->tsf,
				      NL80211_BSS_PAD))
			goto fail_unlock_rcu;
		if (ies->len && FUNC11(msg, NL80211_BSS_BEACON_IES,
					ies->len, ies->data))
			goto fail_unlock_rcu;
	}
	FUNC20();

	if (res->beacon_interval &&
	    FUNC13(msg, NL80211_BSS_BEACON_INTERVAL, res->beacon_interval))
		goto nla_put_failure;
	if (FUNC13(msg, NL80211_BSS_CAPABILITY, res->capability) ||
	    FUNC14(msg, NL80211_BSS_FREQUENCY, res->channel->center_freq) ||
	    FUNC14(msg, NL80211_BSS_CHAN_WIDTH, res->scan_width) ||
	    FUNC14(msg, NL80211_BSS_SEEN_MS_AGO,
			FUNC6(jiffies - intbss->ts)))
		goto nla_put_failure;

	if (intbss->parent_tsf &&
	    (FUNC15(msg, NL80211_BSS_PARENT_TSF,
			       intbss->parent_tsf, NL80211_BSS_PAD) ||
	     FUNC11(msg, NL80211_BSS_PARENT_BSSID, ETH_ALEN,
		     intbss->parent_bssid)))
		goto nla_put_failure;

	if (intbss->ts_boottime &&
	    FUNC15(msg, NL80211_BSS_LAST_SEEN_BOOTTIME,
			      intbss->ts_boottime, NL80211_BSS_PAD))
		goto nla_put_failure;

	if (!FUNC7(msg, intbss->pub.chains,
				intbss->pub.chain_signal,
				NL80211_BSS_CHAIN_SIGNAL))
		goto nla_put_failure;

	switch (rdev->wiphy.signal_type) {
	case CFG80211_SIGNAL_TYPE_MBM:
		if (FUNC14(msg, NL80211_BSS_SIGNAL_MBM, res->signal))
			goto nla_put_failure;
		break;
	case CFG80211_SIGNAL_TYPE_UNSPEC:
		if (FUNC16(msg, NL80211_BSS_SIGNAL_UNSPEC, res->signal))
			goto nla_put_failure;
		break;
	default:
		break;
	}

	switch (wdev->iftype) {
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_STATION:
		if (intbss == wdev->current_bss &&
		    FUNC14(msg, NL80211_BSS_STATUS,
				NL80211_BSS_STATUS_ASSOCIATED))
			goto nla_put_failure;
		break;
	case NL80211_IFTYPE_ADHOC:
		if (intbss == wdev->current_bss &&
		    FUNC14(msg, NL80211_BSS_STATUS,
				NL80211_BSS_STATUS_IBSS_JOINED))
			goto nla_put_failure;
		break;
	default:
		break;
	}

	FUNC9(msg, bss);

	FUNC4(msg, hdr);
	return 0;

 fail_unlock_rcu:
	FUNC20();
 nla_put_failure:
	FUNC3(msg, hdr);
	return -EMSGSIZE;
}