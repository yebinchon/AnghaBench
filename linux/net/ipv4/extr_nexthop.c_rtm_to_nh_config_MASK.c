#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct nhmsg {int nh_flags; int nh_family; int /*<<< orphan*/  nh_protocol; scalar_t__ nh_scope; scalar_t__ resvd; } ;
struct TYPE_7__ {int /*<<< orphan*/  ipv6; int /*<<< orphan*/  ipv4; } ;
struct TYPE_6__ {struct net* nl_net; struct nlmsghdr* nlh; int /*<<< orphan*/  portid; } ;
struct nh_config {int nh_family; int nh_flags; scalar_t__ nh_grp_type; int nh_blackhole; void* nh_encap_type; struct nlattr* nh_encap; TYPE_2__ gw; TYPE_3__* dev; void* nh_ifindex; struct nlattr* nh_grp; void* nh_id; int /*<<< orphan*/  nh_protocol; TYPE_1__ nlinfo; int /*<<< orphan*/  nlflags; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  portid; } ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNSPEC 128 
 int EINVAL ; 
 int ENETDOWN ; 
 int IFF_UP ; 
 TYPE_5__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ NEXTHOP_GRP_TYPE_MAX ; 
 scalar_t__ NEXTHOP_GRP_TYPE_MPATH ; 
 int NEXTHOP_VALID_USER_FLAGS ; 
 size_t NHA_BLACKHOLE ; 
 size_t NHA_ENCAP ; 
 size_t NHA_ENCAP_TYPE ; 
 size_t NHA_GATEWAY ; 
 size_t NHA_GROUP ; 
 size_t NHA_GROUPS ; 
 size_t NHA_GROUP_TYPE ; 
 size_t NHA_ID ; 
 size_t NHA_MASTER ; 
 int /*<<< orphan*/  NHA_MAX ; 
 size_t NHA_OIF ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int RTNH_F_ONLINK ; 
 TYPE_3__* FUNC2 (struct net*,void*) ; 
 int FUNC3 (void*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (struct nh_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (struct net*,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 void* FUNC9 (struct nlattr*) ; 
 void* FUNC10 (struct nlattr*) ; 
 int FUNC11 (struct nlattr*) ; 
 struct nhmsg* FUNC12 (struct nlmsghdr*) ; 
 int FUNC13 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_nh_policy ; 

__attribute__((used)) static int FUNC14(struct net *net, struct sk_buff *skb,
			    struct nlmsghdr *nlh, struct nh_config *cfg,
			    struct netlink_ext_ack *extack)
{
	struct nhmsg *nhm = FUNC12(nlh);
	struct nlattr *tb[NHA_MAX + 1];
	int err;

	err = FUNC13(nlh, sizeof(*nhm), tb, NHA_MAX, rtm_nh_policy,
			  extack);
	if (err < 0)
		return err;

	err = -EINVAL;
	if (nhm->resvd || nhm->nh_scope) {
		FUNC1(extack, "Invalid values in ancillary header");
		goto out;
	}
	if (nhm->nh_flags & ~NEXTHOP_VALID_USER_FLAGS) {
		FUNC1(extack, "Invalid nexthop flags in ancillary header");
		goto out;
	}

	switch (nhm->nh_family) {
	case AF_INET:
	case AF_INET6:
		break;
	case AF_UNSPEC:
		if (tb[NHA_GROUP])
			break;
		/* fallthrough */
	default:
		FUNC1(extack, "Invalid address family");
		goto out;
	}

	if (tb[NHA_GROUPS] || tb[NHA_MASTER]) {
		FUNC1(extack, "Invalid attributes in request");
		goto out;
	}

	FUNC4(cfg, 0, sizeof(*cfg));
	cfg->nlflags = nlh->nlmsg_flags;
	cfg->nlinfo.portid = FUNC0(skb).portid;
	cfg->nlinfo.nlh = nlh;
	cfg->nlinfo.nl_net = net;

	cfg->nh_family = nhm->nh_family;
	cfg->nh_protocol = nhm->nh_protocol;
	cfg->nh_flags = nhm->nh_flags;

	if (tb[NHA_ID])
		cfg->nh_id = FUNC10(tb[NHA_ID]);

	if (tb[NHA_GROUP]) {
		if (nhm->nh_family != AF_UNSPEC) {
			FUNC1(extack, "Invalid family for group");
			goto out;
		}
		cfg->nh_grp = tb[NHA_GROUP];

		cfg->nh_grp_type = NEXTHOP_GRP_TYPE_MPATH;
		if (tb[NHA_GROUP_TYPE])
			cfg->nh_grp_type = FUNC9(tb[NHA_GROUP_TYPE]);

		if (cfg->nh_grp_type > NEXTHOP_GRP_TYPE_MAX) {
			FUNC1(extack, "Invalid group type");
			goto out;
		}
		err = FUNC6(net, tb, extack);

		/* no other attributes should be set */
		goto out;
	}

	if (tb[NHA_BLACKHOLE]) {
		if (tb[NHA_GATEWAY] || tb[NHA_OIF] ||
		    tb[NHA_ENCAP]   || tb[NHA_ENCAP_TYPE]) {
			FUNC1(extack, "Blackhole attribute can not be used with gateway or oif");
			goto out;
		}

		cfg->nh_blackhole = 1;
		err = 0;
		goto out;
	}

	if (!tb[NHA_OIF]) {
		FUNC1(extack, "Device attribute required for non-blackhole nexthops");
		goto out;
	}

	cfg->nh_ifindex = FUNC10(tb[NHA_OIF]);
	if (cfg->nh_ifindex)
		cfg->dev = FUNC2(net, cfg->nh_ifindex);

	if (!cfg->dev) {
		FUNC1(extack, "Invalid device index");
		goto out;
	} else if (!(cfg->dev->flags & IFF_UP)) {
		FUNC1(extack, "Nexthop device is not up");
		err = -ENETDOWN;
		goto out;
	} else if (!FUNC5(cfg->dev)) {
		FUNC1(extack, "Carrier for nexthop device is down");
		err = -ENETDOWN;
		goto out;
	}

	err = -EINVAL;
	if (tb[NHA_GATEWAY]) {
		struct nlattr *gwa = tb[NHA_GATEWAY];

		switch (cfg->nh_family) {
		case AF_INET:
			if (FUNC11(gwa) != sizeof(u32)) {
				FUNC1(extack, "Invalid gateway");
				goto out;
			}
			cfg->gw.ipv4 = FUNC7(gwa);
			break;
		case AF_INET6:
			if (FUNC11(gwa) != sizeof(struct in6_addr)) {
				FUNC1(extack, "Invalid gateway");
				goto out;
			}
			cfg->gw.ipv6 = FUNC8(gwa);
			break;
		default:
			FUNC1(extack,
				       "Unknown address family for gateway");
			goto out;
		}
	} else {
		/* device only nexthop (no gateway) */
		if (cfg->nh_flags & RTNH_F_ONLINK) {
			FUNC1(extack,
				       "ONLINK flag can not be set for nexthop without a gateway");
			goto out;
		}
	}

	if (tb[NHA_ENCAP]) {
		cfg->nh_encap = tb[NHA_ENCAP];

		if (!tb[NHA_ENCAP_TYPE]) {
			FUNC1(extack, "LWT encapsulation type is missing");
			goto out;
		}

		cfg->nh_encap_type = FUNC9(tb[NHA_ENCAP_TYPE]);
		err = FUNC3(cfg->nh_encap_type, extack);
		if (err < 0)
			goto out;

	} else if (tb[NHA_ENCAP_TYPE]) {
		FUNC1(extack, "LWT encapsulation attribute is missing");
		goto out;
	}


	err = 0;
out:
	return err;
}