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
union nf_inet_addr {int /*<<< orphan*/  in6; int /*<<< orphan*/  ip; } ;
typedef  scalar_t__ u_int8_t ;
struct xt_recent_mtinfo_v1 {int invert; scalar_t__ side; int check_set; unsigned long seconds; unsigned int hit_count; int /*<<< orphan*/  name; } ;
struct xt_action_param {int hotdrop; struct xt_recent_mtinfo_v1* matchinfo; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct recent_table {int /*<<< orphan*/  mask; } ;
struct recent_net {int dummy; } ;
struct recent_entry {unsigned int nstamps; scalar_t__ ttl; int /*<<< orphan*/ * stamps; } ;
struct net {int dummy; } ;
struct ipv6hdr {scalar_t__ hop_limit; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct iphdr {scalar_t__ ttl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 unsigned long HZ ; 
 scalar_t__ NFPROTO_IPV4 ; 
 int XT_RECENT_CHECK ; 
 scalar_t__ XT_RECENT_DEST ; 
 int XT_RECENT_REAP ; 
 int XT_RECENT_REMOVE ; 
 int XT_RECENT_SET ; 
 int XT_RECENT_TTL ; 
 int XT_RECENT_UPDATE ; 
 struct iphdr* FUNC0 (struct sk_buff const*) ; 
 struct ipv6hdr* FUNC1 (struct sk_buff const*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union nf_inet_addr*,union nf_inet_addr*,int /*<<< orphan*/ *) ; 
 struct recent_entry* FUNC5 (struct recent_table*,union nf_inet_addr*,scalar_t__,scalar_t__) ; 
 struct recent_entry* FUNC6 (struct recent_table*,union nf_inet_addr*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct recent_table*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct recent_table*,struct recent_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct recent_table*,struct recent_entry*) ; 
 int /*<<< orphan*/  recent_lock ; 
 struct recent_net* FUNC10 (struct net*) ; 
 struct recent_table* FUNC11 (struct recent_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct xt_action_param*) ; 
 struct net* FUNC17 (struct xt_action_param*) ; 
 int /*<<< orphan*/ * FUNC18 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC19(const struct sk_buff *skb, struct xt_action_param *par)
{
	struct net *net = FUNC17(par);
	struct recent_net *recent_net = FUNC10(net);
	const struct xt_recent_mtinfo_v1 *info = par->matchinfo;
	struct recent_table *t;
	struct recent_entry *e;
	union nf_inet_addr addr = {}, addr_mask;
	u_int8_t ttl;
	bool ret = info->invert;

	if (FUNC16(par) == NFPROTO_IPV4) {
		const struct iphdr *iph = FUNC0(skb);

		if (info->side == XT_RECENT_DEST)
			addr.ip = iph->daddr;
		else
			addr.ip = iph->saddr;

		ttl = iph->ttl;
	} else {
		const struct ipv6hdr *iph = FUNC1(skb);

		if (info->side == XT_RECENT_DEST)
			FUNC2(&addr.in6, &iph->daddr, sizeof(addr.in6));
		else
			FUNC2(&addr.in6, &iph->saddr, sizeof(addr.in6));

		ttl = iph->hop_limit;
	}

	/* use TTL as seen before forwarding */
	if (FUNC18(par) != NULL &&
	    (!skb->sk || !FUNC3(net, FUNC12(skb->sk))))
		ttl++;

	FUNC13(&recent_lock);
	t = FUNC11(recent_net, info->name);

	FUNC4(&addr, &addr_mask, &t->mask);

	e = FUNC6(t, &addr_mask, FUNC16(par),
				(info->check_set & XT_RECENT_TTL) ? ttl : 0);
	if (e == NULL) {
		if (!(info->check_set & XT_RECENT_SET))
			goto out;
		e = FUNC5(t, &addr_mask, FUNC16(par), ttl);
		if (e == NULL)
			par->hotdrop = true;
		ret = !ret;
		goto out;
	}

	if (info->check_set & XT_RECENT_SET)
		ret = !ret;
	else if (info->check_set & XT_RECENT_REMOVE) {
		FUNC8(t, e);
		ret = !ret;
	} else if (info->check_set & (XT_RECENT_CHECK | XT_RECENT_UPDATE)) {
		unsigned long time = jiffies - info->seconds * HZ;
		unsigned int i, hits = 0;

		for (i = 0; i < e->nstamps; i++) {
			if (info->seconds && FUNC15(time, e->stamps[i]))
				continue;
			if (!info->hit_count || ++hits >= info->hit_count) {
				ret = !ret;
				break;
			}
		}

		/* info->seconds must be non-zero */
		if (info->check_set & XT_RECENT_REAP)
			FUNC7(t, time);
	}

	if (info->check_set & XT_RECENT_SET ||
	    (info->check_set & XT_RECENT_UPDATE && ret)) {
		FUNC9(t, e);
		e->ttl = ttl;
	}
out:
	FUNC14(&recent_lock);
	return ret;
}