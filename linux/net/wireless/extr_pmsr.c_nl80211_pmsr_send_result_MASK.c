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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_pmsr_result {int type; scalar_t__ final; int /*<<< orphan*/  ap_tsf; scalar_t__ ap_tsf_valid; int /*<<< orphan*/  host_time; int /*<<< orphan*/  status; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int NL80211_ATTR_PEER_MEASUREMENTS ; 
 int NL80211_PMSR_ATTR_PEERS ; 
 int /*<<< orphan*/  NL80211_PMSR_PEER_ATTR_ADDR ; 
 int NL80211_PMSR_PEER_ATTR_RESP ; 
 int /*<<< orphan*/  NL80211_PMSR_RESP_ATTR_AP_TSF ; 
 int NL80211_PMSR_RESP_ATTR_DATA ; 
 int /*<<< orphan*/  NL80211_PMSR_RESP_ATTR_FINAL ; 
 int /*<<< orphan*/  NL80211_PMSR_RESP_ATTR_HOST_TIME ; 
 int /*<<< orphan*/  NL80211_PMSR_RESP_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_PMSR_RESP_ATTR_STATUS ; 
#define  NL80211_PMSR_TYPE_FTM 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct cfg80211_pmsr_result*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *msg,
				    struct cfg80211_pmsr_result *res)
{
	struct nlattr *pmsr, *peers, *peer, *resp, *data, *typedata;

	pmsr = FUNC3(msg, NL80211_ATTR_PEER_MEASUREMENTS);
	if (!pmsr)
		goto error;

	peers = FUNC3(msg, NL80211_PMSR_ATTR_PEERS);
	if (!peers)
		goto error;

	peer = FUNC3(msg, 1);
	if (!peer)
		goto error;

	if (FUNC4(msg, NL80211_PMSR_PEER_ATTR_ADDR, ETH_ALEN, res->addr))
		goto error;

	resp = FUNC3(msg, NL80211_PMSR_PEER_ATTR_RESP);
	if (!resp)
		goto error;

	if (FUNC6(msg, NL80211_PMSR_RESP_ATTR_STATUS, res->status) ||
	    FUNC7(msg, NL80211_PMSR_RESP_ATTR_HOST_TIME,
			      res->host_time, NL80211_PMSR_RESP_ATTR_PAD))
		goto error;

	if (res->ap_tsf_valid &&
	    FUNC7(msg, NL80211_PMSR_RESP_ATTR_AP_TSF,
			      res->ap_tsf, NL80211_PMSR_RESP_ATTR_PAD))
		goto error;

	if (res->final && FUNC5(msg, NL80211_PMSR_RESP_ATTR_FINAL))
		goto error;

	data = FUNC3(msg, NL80211_PMSR_RESP_ATTR_DATA);
	if (!data)
		goto error;

	typedata = FUNC3(msg, res->type);
	if (!typedata)
		goto error;

	switch (res->type) {
	case NL80211_PMSR_TYPE_FTM:
		if (FUNC1(msg, res))
			goto error;
		break;
	default:
		FUNC0(1);
	}

	FUNC2(msg, typedata);
	FUNC2(msg, data);
	FUNC2(msg, resp);
	FUNC2(msg, peer);
	FUNC2(msg, peers);
	FUNC2(msg, pmsr);

	return 0;
error:
	return -ENOSPC;
}