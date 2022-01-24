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
struct nh_config {int nlflags; int /*<<< orphan*/  nh_protocol; scalar_t__ nh_id; scalar_t__ nh_grp; } ;
struct nexthop {struct net* net; int /*<<< orphan*/  protocol; scalar_t__ id; int /*<<< orphan*/  refcnt; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nexthop* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nexthop*) ; 
 int NLM_F_REPLACE ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct nexthop*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct net*,struct nexthop*,struct nh_config*,struct netlink_ext_ack*) ; 
 struct nexthop* FUNC5 (struct net*,struct nh_config*,struct netlink_ext_ack*) ; 
 struct nexthop* FUNC6 (struct net*,struct nh_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct nexthop*) ; 
 scalar_t__ FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct nexthop *FUNC10(struct net *net, struct nh_config *cfg,
				   struct netlink_ext_ack *extack)
{
	struct nexthop *nh;
	int err;

	if (cfg->nlflags & NLM_F_REPLACE && !cfg->nh_id) {
		FUNC2(extack, "Replace requires nexthop id");
		return FUNC0(-EINVAL);
	}

	if (!cfg->nh_id) {
		cfg->nh_id = FUNC8(net);
		if (!cfg->nh_id) {
			FUNC2(extack, "No unused id");
			return FUNC0(-EINVAL);
		}
	}

	if (cfg->nh_grp)
		nh = FUNC6(net, cfg);
	else
		nh = FUNC5(net, cfg, extack);

	if (FUNC1(nh))
		return nh;

	FUNC9(&nh->refcnt, 1);
	nh->id = cfg->nh_id;
	nh->protocol = cfg->nh_protocol;
	nh->net = net;

	err = FUNC4(net, nh, cfg, extack);
	if (err) {
		FUNC3(net, nh, NULL);
		FUNC7(nh);
		nh = FUNC0(err);
	}

	return nh;
}