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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct ip_set_net {int dummy; } ;
struct ip_set {int /*<<< orphan*/  revision; int /*<<< orphan*/  family; TYPE_1__* type; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPSET_ATTR_FAMILY ; 
 int /*<<< orphan*/  IPSET_ATTR_PROTOCOL ; 
 int /*<<< orphan*/  IPSET_ATTR_REVISION ; 
 size_t IPSET_ATTR_SETNAME ; 
 size_t IPSET_ATTR_TYPENAME ; 
 int /*<<< orphan*/  IPSET_CMD_HEADER ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_2__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct ip_set* FUNC1 (struct ip_set_net*,int /*<<< orphan*/ ) ; 
 struct ip_set_net* FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const* const) ; 
 scalar_t__ FUNC6 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nlattr const* const*) ; 
 scalar_t__ FUNC12 (struct nlattr const* const*) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sock *ctnl,
			 struct sk_buff *skb, const struct nlmsghdr *nlh,
			 const struct nlattr * const attr[],
			 struct netlink_ext_ack *extack)
{
	struct ip_set_net *inst = FUNC2(net);
	const struct ip_set *set;
	struct sk_buff *skb2;
	struct nlmsghdr *nlh2;
	int ret = 0;

	if (FUNC14(FUNC12(attr) ||
		     !attr[IPSET_ATTR_SETNAME]))
		return -IPSET_ERR_PROTOCOL;

	set = FUNC1(inst, FUNC5(attr[IPSET_ATTR_SETNAME]));
	if (!set)
		return -ENOENT;

	skb2 = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb2)
		return -ENOMEM;

	nlh2 = FUNC13(skb2, FUNC0(skb).portid, nlh->nlmsg_seq, 0,
			 IPSET_CMD_HEADER);
	if (!nlh2)
		goto nlmsg_failure;
	if (FUNC7(skb2, IPSET_ATTR_PROTOCOL, FUNC11(attr)) ||
	    FUNC6(skb2, IPSET_ATTR_SETNAME, set->name) ||
	    FUNC6(skb2, IPSET_ATTR_TYPENAME, set->type->name) ||
	    FUNC7(skb2, IPSET_ATTR_FAMILY, set->family) ||
	    FUNC7(skb2, IPSET_ATTR_REVISION, set->revision))
		goto nla_put_failure;
	FUNC9(skb2, nlh2);

	ret = FUNC4(ctnl, skb2, FUNC0(skb).portid, MSG_DONTWAIT);
	if (ret < 0)
		return ret;

	return 0;

nla_put_failure:
	FUNC8(skb2, nlh2);
nlmsg_failure:
	FUNC3(skb2);
	return -EMSGSIZE;
}