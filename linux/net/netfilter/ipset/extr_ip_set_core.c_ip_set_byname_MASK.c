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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct ip_set_net {int dummy; } ;
struct ip_set {int /*<<< orphan*/  family; } ;
typedef  scalar_t__ ip_set_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPSET_ATTR_FAMILY ; 
 int /*<<< orphan*/  IPSET_ATTR_INDEX ; 
 int /*<<< orphan*/  IPSET_ATTR_PROTOCOL ; 
 size_t IPSET_ATTR_SETNAME ; 
 int /*<<< orphan*/  IPSET_CMD_GET_BYNAME ; 
 int IPSET_ERR_PROTOCOL ; 
 scalar_t__ IPSET_INVALID_ID ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct ip_set* FUNC1 (struct ip_set_net*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct ip_set_net* FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr const* const) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr const* const*) ; 
 scalar_t__ FUNC13 (struct nlattr const* const*) ; 
 struct nlmsghdr* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct net *net, struct sock *ctnl,
			 struct sk_buff *skb, const struct nlmsghdr *nlh,
			 const struct nlattr * const attr[],
			 struct netlink_ext_ack *extack)
{
	struct ip_set_net *inst = FUNC3(net);
	struct sk_buff *skb2;
	struct nlmsghdr *nlh2;
	ip_set_id_t id = IPSET_INVALID_ID;
	const struct ip_set *set;
	int ret = 0;

	if (FUNC15(FUNC13(attr) ||
		     !attr[IPSET_ATTR_SETNAME]))
		return -IPSET_ERR_PROTOCOL;

	set = FUNC1(inst, FUNC6(attr[IPSET_ATTR_SETNAME]), &id);
	if (id == IPSET_INVALID_ID)
		return -ENOENT;

	skb2 = FUNC11(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb2)
		return -ENOMEM;

	nlh2 = FUNC14(skb2, FUNC0(skb).portid, nlh->nlmsg_seq, 0,
			 IPSET_CMD_GET_BYNAME);
	if (!nlh2)
		goto nlmsg_failure;
	if (FUNC8(skb2, IPSET_ATTR_PROTOCOL, FUNC12(attr)) ||
	    FUNC8(skb2, IPSET_ATTR_FAMILY, set->family) ||
	    FUNC7(skb2, IPSET_ATTR_INDEX, FUNC2(id)))
		goto nla_put_failure;
	FUNC10(skb2, nlh2);

	ret = FUNC5(ctnl, skb2, FUNC0(skb).portid, MSG_DONTWAIT);
	if (ret < 0)
		return ret;

	return 0;

nla_put_failure:
	FUNC9(skb2, nlh2);
nlmsg_failure:
	FUNC4(skb2);
	return -EMSGSIZE;
}