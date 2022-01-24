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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dn_ptr; } ;
struct net {int dummy; } ;
struct ifaddrmsg {int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_flags; int /*<<< orphan*/  ifa_index; } ;
struct dn_ifaddr {int /*<<< orphan*/  ifa_label; struct dn_dev* ifa_dev; int /*<<< orphan*/  ifa_scope; int /*<<< orphan*/  ifa_flags; void* ifa_address; void* ifa_local; } ;
struct dn_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int EPERM ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_FLAGS ; 
 size_t IFA_LABEL ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dn_ifaddr* FUNC1 () ; 
 struct dn_dev* FUNC2 (struct net_device*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct dn_ifaddr*) ; 
 int FUNC4 (struct dn_dev*,struct dn_ifaddr*) ; 
 int /*<<< orphan*/  dn_ifa_policy ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 struct ifaddrmsg* FUNC11 (struct nlmsghdr*) ; 
 int FUNC12 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct dn_dev* FUNC13 (int /*<<< orphan*/ ) ; 
 struct net* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct nlmsghdr *nlh,
			 struct netlink_ext_ack *extack)
{
	struct net *net = FUNC14(skb->sk);
	struct nlattr *tb[IFA_MAX+1];
	struct net_device *dev;
	struct dn_dev *dn_db;
	struct ifaddrmsg *ifm;
	struct dn_ifaddr *ifa;
	int err;

	if (!FUNC7(skb, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC6(net, &init_net))
		return -EINVAL;

	err = FUNC12(nlh, sizeof(*ifm), tb, IFA_MAX,
				     dn_ifa_policy, extack);
	if (err < 0)
		return err;

	if (tb[IFA_LOCAL] == NULL)
		return -EINVAL;

	ifm = FUNC11(nlh);
	if ((dev = FUNC0(&init_net, ifm->ifa_index)) == NULL)
		return -ENODEV;

	if ((dn_db = FUNC13(dev->dn_ptr)) == NULL) {
		dn_db = FUNC2(dev, &err);
		if (!dn_db)
			return err;
	}

	if ((ifa = FUNC1()) == NULL)
		return -ENOBUFS;

	if (tb[IFA_ADDRESS] == NULL)
		tb[IFA_ADDRESS] = tb[IFA_LOCAL];

	ifa->ifa_local = FUNC8(tb[IFA_LOCAL]);
	ifa->ifa_address = FUNC8(tb[IFA_ADDRESS]);
	ifa->ifa_flags = tb[IFA_FLAGS] ? FUNC9(tb[IFA_FLAGS]) :
					 ifm->ifa_flags;
	ifa->ifa_scope = ifm->ifa_scope;
	ifa->ifa_dev = dn_db;

	if (tb[IFA_LABEL])
		FUNC10(ifa->ifa_label, tb[IFA_LABEL], IFNAMSIZ);
	else
		FUNC5(ifa->ifa_label, dev->name, IFNAMSIZ);

	err = FUNC4(dn_db, ifa);
	if (err)
		FUNC3(ifa);

	return err;
}