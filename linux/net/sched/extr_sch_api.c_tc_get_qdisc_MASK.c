#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcmsg {scalar_t__ tcm_parent; scalar_t__ tcm_handle; int /*<<< orphan*/  tcm_ifindex; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {struct Qdisc* qdisc; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct Qdisc {scalar_t__ handle; TYPE_1__* ops; } ;
struct TYPE_4__ {struct Qdisc* qdisc_sleeping; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ RTM_DELQDISC ; 
 scalar_t__ RTM_GETQDISC ; 
 size_t TCA_KIND ; 
 int /*<<< orphan*/  TCA_MAX ; 
 scalar_t__ TC_H_INGRESS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TC_H_ROOT ; 
 struct net_device* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nlattr*,int /*<<< orphan*/ ) ; 
 struct tcmsg* FUNC6 (struct nlmsghdr*) ; 
 int FUNC7 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC8 (struct net_device*,struct Qdisc*,struct sk_buff*,struct nlmsghdr*,scalar_t__,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 
 struct Qdisc* FUNC9 (struct Qdisc*,scalar_t__) ; 
 struct Qdisc* FUNC10 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,struct sk_buff*,struct nlmsghdr*,scalar_t__,int /*<<< orphan*/ *,struct Qdisc*) ; 
 int /*<<< orphan*/  rtm_tca_policy ; 
 struct net* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct nlmsghdr *n,
			struct netlink_ext_ack *extack)
{
	struct net *net = FUNC12(skb->sk);
	struct tcmsg *tcm = FUNC6(n);
	struct nlattr *tca[TCA_MAX + 1];
	struct net_device *dev;
	u32 clid;
	struct Qdisc *q = NULL;
	struct Qdisc *p = NULL;
	int err;

	if ((n->nlmsg_type != RTM_GETQDISC) &&
	    !FUNC4(skb, net->user_ns, CAP_NET_ADMIN))
		return -EPERM;

	err = FUNC7(n, sizeof(*tcm), tca, TCA_MAX,
				     rtm_tca_policy, extack);
	if (err < 0)
		return err;

	dev = FUNC2(net, tcm->tcm_ifindex);
	if (!dev)
		return -ENODEV;

	clid = tcm->tcm_parent;
	if (clid) {
		if (clid != TC_H_ROOT) {
			if (FUNC1(clid) != FUNC1(TC_H_INGRESS)) {
				p = FUNC10(dev, FUNC1(clid));
				if (!p) {
					FUNC0(extack, "Failed to find qdisc with specified classid");
					return -ENOENT;
				}
				q = FUNC9(p, clid);
			} else if (FUNC3(dev)) {
				q = FUNC3(dev)->qdisc_sleeping;
			}
		} else {
			q = dev->qdisc;
		}
		if (!q) {
			FUNC0(extack, "Cannot find specified qdisc on specified device");
			return -ENOENT;
		}

		if (tcm->tcm_handle && q->handle != tcm->tcm_handle) {
			FUNC0(extack, "Invalid handle");
			return -EINVAL;
		}
	} else {
		q = FUNC10(dev, tcm->tcm_handle);
		if (!q) {
			FUNC0(extack, "Failed to find qdisc with specified handle");
			return -ENOENT;
		}
	}

	if (tca[TCA_KIND] && FUNC5(tca[TCA_KIND], q->ops->id)) {
		FUNC0(extack, "Invalid qdisc name");
		return -EINVAL;
	}

	if (n->nlmsg_type == RTM_DELQDISC) {
		if (!clid) {
			FUNC0(extack, "Classid cannot be zero");
			return -EINVAL;
		}
		if (q->handle == 0) {
			FUNC0(extack, "Cannot delete qdisc with handle of zero");
			return -ENOENT;
		}
		err = FUNC8(dev, p, skb, n, clid, NULL, q, extack);
		if (err != 0)
			return err;
	} else {
		FUNC11(net, skb, n, clid, NULL, q);
	}
	return 0;
}