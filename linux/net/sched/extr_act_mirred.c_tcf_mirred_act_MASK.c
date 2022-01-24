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
struct tcf_result {int ingress; int /*<<< orphan*/  qstats; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_mirred {TYPE_1__ common; int /*<<< orphan*/  tcfm_dev; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcfm_eaction; int /*<<< orphan*/  tcfm_mac_header_xmit; int /*<<< orphan*/  tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int tc_redirected; scalar_t__ tstamp; scalar_t__ tc_from_ingress; scalar_t__ tc_at_ingress; struct net_device* dev; int /*<<< orphan*/  skb_iif; int /*<<< orphan*/  mac_len; } ;
struct net_device {int flags; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_UP ; 
 unsigned int MIRRED_RECURSION_LIMIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TC_ACT_CONSUMED ; 
 int TC_ACT_SHOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  mirred_rec_level ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct tcf_result*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int) ; 
 scalar_t__ FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct tcf_mirred* FUNC24 (struct tc_action const*) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static int FUNC26(struct sk_buff *skb, const struct tc_action *a,
			  struct tcf_result *res)
{
	struct tcf_mirred *m = FUNC24(a);
	struct sk_buff *skb2 = skb;
	bool m_mac_header_xmit;
	struct net_device *dev;
	unsigned int rec_level;
	int retval, err = 0;
	bool use_reinsert;
	bool want_ingress;
	bool is_redirect;
	int m_eaction;
	int mac_len;

	rec_level = FUNC2(mirred_rec_level);
	if (FUNC25(rec_level > MIRRED_RECURSION_LIMIT)) {
		FUNC6("Packet exceeded mirred recursion limit on dev %s\n",
				     FUNC7(skb->dev));
		FUNC1(mirred_rec_level);
		return TC_ACT_SHOT;
	}

	FUNC19(&m->tcf_tm);
	FUNC3(FUNC23(m->common.cpu_bstats), skb);

	m_mac_header_xmit = FUNC0(m->tcfm_mac_header_xmit);
	m_eaction = FUNC0(m->tcfm_eaction);
	retval = FUNC0(m->tcf_action);
	dev = FUNC11(m->tcfm_dev);
	if (FUNC25(!dev)) {
		FUNC9("tc mirred: target device is gone\n");
		goto out;
	}

	if (FUNC25(!(dev->flags & IFF_UP))) {
		FUNC5("tc mirred to Houston: device %s is down\n",
				       dev->name);
		goto out;
	}

	/* we could easily avoid the clone only if called by ingress and clsact;
	 * since we can't easily detect the clsact caller, skip clone only for
	 * ingress - that covers the TC S/W datapath.
	 */
	is_redirect = FUNC22(m_eaction);
	use_reinsert = FUNC12(skb) && is_redirect &&
		       FUNC21(retval);
	if (!use_reinsert) {
		skb2 = FUNC13(skb, GFP_ATOMIC);
		if (!skb2)
			goto out;
	}

	/* If action's target direction differs than filter's direction,
	 * and devices expect a mac header on xmit, then mac push/pull is
	 * needed.
	 */
	want_ingress = FUNC20(m_eaction);
	if (FUNC12(skb) != want_ingress && m_mac_header_xmit) {
		if (!FUNC12(skb)) {
			/* caught at egress, act ingress: pull mac */
			mac_len = FUNC15(skb) - FUNC14(skb);
			FUNC16(skb2, mac_len);
		} else {
			/* caught at ingress, act egress: push mac */
			FUNC17(skb2, skb->mac_len);
		}
	}

	skb2->skb_iif = skb->dev->ifindex;
	skb2->dev = dev;

	/* mirror is always swallowed */
	if (is_redirect) {
		skb2->tc_redirected = 1;
		skb2->tc_from_ingress = skb2->tc_at_ingress;
		if (skb2->tc_from_ingress)
			skb2->tstamp = 0;
		/* let's the caller reinsert the packet, if possible */
		if (use_reinsert) {
			res->ingress = want_ingress;
			res->qstats = FUNC23(m->common.cpu_qstats);
			FUNC18(skb, res);
			FUNC1(mirred_rec_level);
			return TC_ACT_CONSUMED;
		}
	}

	if (!want_ingress)
		err = FUNC4(skb2);
	else
		err = FUNC8(skb2);

	if (err) {
out:
		FUNC10(FUNC23(m->common.cpu_qstats));
		if (FUNC22(m_eaction))
			retval = TC_ACT_SHOT;
	}
	FUNC1(mirred_rec_level);

	return retval;
}