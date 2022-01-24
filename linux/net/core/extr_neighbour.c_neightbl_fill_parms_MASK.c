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
struct neigh_parms {int reachable_time; int /*<<< orphan*/  refcnt; TYPE_1__* dev; } ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANYCAST_DELAY ; 
 int /*<<< orphan*/  APP_PROBES ; 
 int /*<<< orphan*/  BASE_REACHABLE_TIME ; 
 int /*<<< orphan*/  DELAY_PROBE_TIME ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_FRAME_LEN ; 
 int /*<<< orphan*/  GC_STALETIME ; 
 int /*<<< orphan*/  LOCKTIME ; 
 int /*<<< orphan*/  MCAST_PROBES ; 
 int /*<<< orphan*/  MCAST_REPROBES ; 
 int /*<<< orphan*/  NDTA_PARMS ; 
 int /*<<< orphan*/  NDTPA_ANYCAST_DELAY ; 
 int /*<<< orphan*/  NDTPA_APP_PROBES ; 
 int /*<<< orphan*/  NDTPA_BASE_REACHABLE_TIME ; 
 int /*<<< orphan*/  NDTPA_DELAY_PROBE_TIME ; 
 int /*<<< orphan*/  NDTPA_GC_STALETIME ; 
 int /*<<< orphan*/  NDTPA_IFINDEX ; 
 int /*<<< orphan*/  NDTPA_LOCKTIME ; 
 int /*<<< orphan*/  NDTPA_MCAST_PROBES ; 
 int /*<<< orphan*/  NDTPA_MCAST_REPROBES ; 
 int /*<<< orphan*/  NDTPA_PAD ; 
 int /*<<< orphan*/  NDTPA_PROXY_DELAY ; 
 int /*<<< orphan*/  NDTPA_PROXY_QLEN ; 
 int /*<<< orphan*/  NDTPA_QUEUE_LEN ; 
 int /*<<< orphan*/  NDTPA_QUEUE_LENBYTES ; 
 int /*<<< orphan*/  NDTPA_REACHABLE_TIME ; 
 int /*<<< orphan*/  NDTPA_REFCNT ; 
 int /*<<< orphan*/  NDTPA_RETRANS_TIME ; 
 int /*<<< orphan*/  NDTPA_UCAST_PROBES ; 
 int FUNC0 (struct neigh_parms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROXY_DELAY ; 
 int /*<<< orphan*/  PROXY_QLEN ; 
 int /*<<< orphan*/  QUEUE_LEN_BYTES ; 
 int /*<<< orphan*/  RETRANS_TIME ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCAST_PROBES ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct neigh_parms *parms)
{
	struct nlattr *nest;

	nest = FUNC4(skb, NDTA_PARMS);
	if (nest == NULL)
		return -ENOBUFS;

	if ((parms->dev &&
	     FUNC6(skb, NDTPA_IFINDEX, parms->dev->ifindex)) ||
	    FUNC6(skb, NDTPA_REFCNT, FUNC7(&parms->refcnt)) ||
	    FUNC6(skb, NDTPA_QUEUE_LENBYTES,
			FUNC0(parms, QUEUE_LEN_BYTES)) ||
	    /* approximative value for deprecated QUEUE_LEN (in packets) */
	    FUNC6(skb, NDTPA_QUEUE_LEN,
			FUNC0(parms, QUEUE_LEN_BYTES) / FUNC1(ETH_FRAME_LEN)) ||
	    FUNC6(skb, NDTPA_PROXY_QLEN, FUNC0(parms, PROXY_QLEN)) ||
	    FUNC6(skb, NDTPA_APP_PROBES, FUNC0(parms, APP_PROBES)) ||
	    FUNC6(skb, NDTPA_UCAST_PROBES,
			FUNC0(parms, UCAST_PROBES)) ||
	    FUNC6(skb, NDTPA_MCAST_PROBES,
			FUNC0(parms, MCAST_PROBES)) ||
	    FUNC6(skb, NDTPA_MCAST_REPROBES,
			FUNC0(parms, MCAST_REPROBES)) ||
	    FUNC5(skb, NDTPA_REACHABLE_TIME, parms->reachable_time,
			  NDTPA_PAD) ||
	    FUNC5(skb, NDTPA_BASE_REACHABLE_TIME,
			  FUNC0(parms, BASE_REACHABLE_TIME), NDTPA_PAD) ||
	    FUNC5(skb, NDTPA_GC_STALETIME,
			  FUNC0(parms, GC_STALETIME), NDTPA_PAD) ||
	    FUNC5(skb, NDTPA_DELAY_PROBE_TIME,
			  FUNC0(parms, DELAY_PROBE_TIME), NDTPA_PAD) ||
	    FUNC5(skb, NDTPA_RETRANS_TIME,
			  FUNC0(parms, RETRANS_TIME), NDTPA_PAD) ||
	    FUNC5(skb, NDTPA_ANYCAST_DELAY,
			  FUNC0(parms, ANYCAST_DELAY), NDTPA_PAD) ||
	    FUNC5(skb, NDTPA_PROXY_DELAY,
			  FUNC0(parms, PROXY_DELAY), NDTPA_PAD) ||
	    FUNC5(skb, NDTPA_LOCKTIME,
			  FUNC0(parms, LOCKTIME), NDTPA_PAD))
		goto nla_put_failure;
	return FUNC3(skb, nest);

nla_put_failure:
	FUNC2(skb, nest);
	return -EMSGSIZE;
}