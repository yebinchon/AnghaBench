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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {struct cfg80211_pmsr_capabilities* pmsr_capa; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
struct cfg80211_pmsr_capabilities {scalar_t__ randomize_mac_addr; scalar_t__ report_ap_tsf; int /*<<< orphan*/  max_peers; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  NL80211_ATTR_PEER_MEASUREMENTS ; 
 int /*<<< orphan*/  NL80211_PMSR_ATTR_MAX_PEERS ; 
 int /*<<< orphan*/  NL80211_PMSR_ATTR_RANDOMIZE_MAC_ADDR ; 
 int /*<<< orphan*/  NL80211_PMSR_ATTR_REPORT_AP_TSF ; 
 int /*<<< orphan*/  NL80211_PMSR_ATTR_TYPE_CAPA ; 
 scalar_t__ FUNC0 (struct cfg80211_pmsr_capabilities const*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cfg80211_registered_device *rdev,
				  struct sk_buff *msg)
{
	const struct cfg80211_pmsr_capabilities *cap = rdev->wiphy.pmsr_capa;
	struct nlattr *pmsr, *caps;

	if (!cap)
		return 0;

	/*
	 * we don't need to clean up anything here since the caller
	 * will genlmsg_cancel() if we fail
	 */

	pmsr = FUNC2(msg, NL80211_ATTR_PEER_MEASUREMENTS);
	if (!pmsr)
		return -ENOBUFS;

	if (FUNC4(msg, NL80211_PMSR_ATTR_MAX_PEERS, cap->max_peers))
		return -ENOBUFS;

	if (cap->report_ap_tsf &&
	    FUNC3(msg, NL80211_PMSR_ATTR_REPORT_AP_TSF))
		return -ENOBUFS;

	if (cap->randomize_mac_addr &&
	    FUNC3(msg, NL80211_PMSR_ATTR_RANDOMIZE_MAC_ADDR))
		return -ENOBUFS;

	caps = FUNC2(msg, NL80211_PMSR_ATTR_TYPE_CAPA);
	if (!caps)
		return -ENOBUFS;

	if (FUNC0(cap, msg))
		return -ENOBUFS;

	FUNC1(msg, caps);
	FUNC1(msg, pmsr);

	return 0;
}