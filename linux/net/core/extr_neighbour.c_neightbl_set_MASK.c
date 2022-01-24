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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {scalar_t__ family; int gc_thresh1; int gc_thresh2; int gc_thresh3; int gc_interval; int /*<<< orphan*/  lock; int /*<<< orphan*/  id; } ;
struct neigh_parms {int /*<<< orphan*/  reachable_time; } ;
struct ndtmsg {scalar_t__ ndtm_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANYCAST_DELAY ; 
 int /*<<< orphan*/  APP_PROBES ; 
 int /*<<< orphan*/  BASE_REACHABLE_TIME ; 
 int /*<<< orphan*/  DELAY_PROBE_TIME ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ETH_FRAME_LEN ; 
 int /*<<< orphan*/  GC_STALETIME ; 
 int /*<<< orphan*/  LOCKTIME ; 
 int /*<<< orphan*/  MCAST_PROBES ; 
 int /*<<< orphan*/  MCAST_REPROBES ; 
 size_t NDTA_GC_INTERVAL ; 
 int /*<<< orphan*/  NDTA_MAX ; 
 size_t NDTA_NAME ; 
 size_t NDTA_PARMS ; 
 size_t NDTA_THRESH1 ; 
 size_t NDTA_THRESH2 ; 
 size_t NDTA_THRESH3 ; 
#define  NDTPA_ANYCAST_DELAY 141 
#define  NDTPA_APP_PROBES 140 
#define  NDTPA_BASE_REACHABLE_TIME 139 
#define  NDTPA_DELAY_PROBE_TIME 138 
#define  NDTPA_GC_STALETIME 137 
 size_t NDTPA_IFINDEX ; 
#define  NDTPA_LOCKTIME 136 
 int NDTPA_MAX ; 
#define  NDTPA_MCAST_PROBES 135 
#define  NDTPA_MCAST_REPROBES 134 
#define  NDTPA_PROXY_DELAY 133 
#define  NDTPA_PROXY_QLEN 132 
#define  NDTPA_QUEUE_LEN 131 
#define  NDTPA_QUEUE_LENBYTES 130 
#define  NDTPA_RETRANS_TIME 129 
#define  NDTPA_UCAST_PROBES 128 
 int NEIGH_NR_TABLES ; 
 int /*<<< orphan*/  FUNC0 (struct neigh_parms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct neigh_parms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NETEVENT_DELAY_PROBE_TIME_UPDATE ; 
 int /*<<< orphan*/  PROXY_DELAY ; 
 int /*<<< orphan*/  PROXY_QLEN ; 
 int /*<<< orphan*/  QUEUE_LEN_BYTES ; 
 int /*<<< orphan*/  RETRANS_TIME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCAST_PROBES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct neigh_parms*) ; 
 int /*<<< orphan*/  init_net ; 
 struct neigh_parms* FUNC4 (struct neigh_table*,struct net*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct neigh_table** neigh_tables ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nl_neightbl_policy ; 
 int /*<<< orphan*/  nl_ntbl_parm_policy ; 
 int FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr*) ; 
 int FUNC9 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC10 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct ndtmsg* FUNC11 (struct nlmsghdr*) ; 
 int FUNC12 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct nlmsghdr *nlh,
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC13(skb->sk);
	struct neigh_table *tbl;
	struct ndtmsg *ndtmsg;
	struct nlattr *tb[NDTA_MAX+1];
	bool found = false;
	int err, tidx;

	err = FUNC12(nlh, sizeof(*ndtmsg), tb, NDTA_MAX,
				     nl_neightbl_policy, extack);
	if (err < 0)
		goto errout;

	if (tb[NDTA_NAME] == NULL) {
		err = -EINVAL;
		goto errout;
	}

	ndtmsg = FUNC11(nlh);

	for (tidx = 0; tidx < NEIGH_NR_TABLES; tidx++) {
		tbl = neigh_tables[tidx];
		if (!tbl)
			continue;
		if (ndtmsg->ndtm_family && tbl->family != ndtmsg->ndtm_family)
			continue;
		if (FUNC10(tb[NDTA_NAME], tbl->id) == 0) {
			found = true;
			break;
		}
	}

	if (!found)
		return -ENOENT;

	/*
	 * We acquire tbl->lock to be nice to the periodic timers and
	 * make sure they always see a consistent set of values.
	 */
	FUNC14(&tbl->lock);

	if (tb[NDTA_PARMS]) {
		struct nlattr *tbp[NDTPA_MAX+1];
		struct neigh_parms *p;
		int i, ifindex = 0;

		err = FUNC9(tbp, NDTPA_MAX,
						  tb[NDTA_PARMS],
						  nl_ntbl_parm_policy, extack);
		if (err < 0)
			goto errout_tbl_lock;

		if (tbp[NDTPA_IFINDEX])
			ifindex = FUNC8(tbp[NDTPA_IFINDEX]);

		p = FUNC4(tbl, net, ifindex);
		if (p == NULL) {
			err = -ENOENT;
			goto errout_tbl_lock;
		}

		for (i = 1; i <= NDTPA_MAX; i++) {
			if (tbp[i] == NULL)
				continue;

			switch (i) {
			case NDTPA_QUEUE_LEN:
				FUNC1(p, QUEUE_LEN_BYTES,
					      FUNC8(tbp[i]) *
					      FUNC2(ETH_FRAME_LEN));
				break;
			case NDTPA_QUEUE_LENBYTES:
				FUNC1(p, QUEUE_LEN_BYTES,
					      FUNC8(tbp[i]));
				break;
			case NDTPA_PROXY_QLEN:
				FUNC1(p, PROXY_QLEN,
					      FUNC8(tbp[i]));
				break;
			case NDTPA_APP_PROBES:
				FUNC1(p, APP_PROBES,
					      FUNC8(tbp[i]));
				break;
			case NDTPA_UCAST_PROBES:
				FUNC1(p, UCAST_PROBES,
					      FUNC8(tbp[i]));
				break;
			case NDTPA_MCAST_PROBES:
				FUNC1(p, MCAST_PROBES,
					      FUNC8(tbp[i]));
				break;
			case NDTPA_MCAST_REPROBES:
				FUNC1(p, MCAST_REPROBES,
					      FUNC8(tbp[i]));
				break;
			case NDTPA_BASE_REACHABLE_TIME:
				FUNC1(p, BASE_REACHABLE_TIME,
					      FUNC7(tbp[i]));
				/* update reachable_time as well, otherwise, the change will
				 * only be effective after the next time neigh_periodic_work
				 * decides to recompute it (can be multiple minutes)
				 */
				p->reachable_time =
					FUNC5(FUNC0(p, BASE_REACHABLE_TIME));
				break;
			case NDTPA_GC_STALETIME:
				FUNC1(p, GC_STALETIME,
					      FUNC7(tbp[i]));
				break;
			case NDTPA_DELAY_PROBE_TIME:
				FUNC1(p, DELAY_PROBE_TIME,
					      FUNC7(tbp[i]));
				FUNC3(NETEVENT_DELAY_PROBE_TIME_UPDATE, p);
				break;
			case NDTPA_RETRANS_TIME:
				FUNC1(p, RETRANS_TIME,
					      FUNC7(tbp[i]));
				break;
			case NDTPA_ANYCAST_DELAY:
				FUNC1(p, ANYCAST_DELAY,
					      FUNC7(tbp[i]));
				break;
			case NDTPA_PROXY_DELAY:
				FUNC1(p, PROXY_DELAY,
					      FUNC7(tbp[i]));
				break;
			case NDTPA_LOCKTIME:
				FUNC1(p, LOCKTIME,
					      FUNC7(tbp[i]));
				break;
			}
		}
	}

	err = -ENOENT;
	if ((tb[NDTA_THRESH1] || tb[NDTA_THRESH2] ||
	     tb[NDTA_THRESH3] || tb[NDTA_GC_INTERVAL]) &&
	    !FUNC6(net, &init_net))
		goto errout_tbl_lock;

	if (tb[NDTA_THRESH1])
		tbl->gc_thresh1 = FUNC8(tb[NDTA_THRESH1]);

	if (tb[NDTA_THRESH2])
		tbl->gc_thresh2 = FUNC8(tb[NDTA_THRESH2]);

	if (tb[NDTA_THRESH3])
		tbl->gc_thresh3 = FUNC8(tb[NDTA_THRESH3]);

	if (tb[NDTA_GC_INTERVAL])
		tbl->gc_interval = FUNC7(tb[NDTA_GC_INTERVAL]);

	err = 0;

errout_tbl_lock:
	FUNC15(&tbl->lock);
errout:
	return err;
}