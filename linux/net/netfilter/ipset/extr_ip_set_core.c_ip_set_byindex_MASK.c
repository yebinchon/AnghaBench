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
struct ip_set_net {scalar_t__ ip_set_max; } ;
struct ip_set {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ ip_set_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IPSET_ATTR_INDEX ; 
 int /*<<< orphan*/  IPSET_ATTR_PROTOCOL ; 
 int /*<<< orphan*/  IPSET_ATTR_SETNAME ; 
 int /*<<< orphan*/  IPSET_CMD_GET_BYINDEX ; 
 int IPSET_ERR_PROTOCOL ; 
 scalar_t__ IPSET_INVALID_ID ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct ip_set* FUNC1 (struct ip_set_net*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nlattr const* const) ; 
 struct ip_set_net* FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
	struct ip_set_net *inst = FUNC3(net);
	struct sk_buff *skb2;
	struct nlmsghdr *nlh2;
	ip_set_id_t id = IPSET_INVALID_ID;
	const struct ip_set *set;
	int ret = 0;

	if (FUNC14(FUNC12(attr) ||
		     !attr[IPSET_ATTR_INDEX]))
		return -IPSET_ERR_PROTOCOL;

	id = FUNC2(attr[IPSET_ATTR_INDEX]);
	if (id >= inst->ip_set_max)
		return -ENOENT;
	set = FUNC1(inst, id);
	if (set == NULL)
		return -ENOENT;

	skb2 = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb2)
		return -ENOMEM;

	nlh2 = FUNC13(skb2, FUNC0(skb).portid, nlh->nlmsg_seq, 0,
			 IPSET_CMD_GET_BYINDEX);
	if (!nlh2)
		goto nlmsg_failure;
	if (FUNC7(skb2, IPSET_ATTR_PROTOCOL, FUNC11(attr)) ||
	    FUNC6(skb2, IPSET_ATTR_SETNAME, set->name))
		goto nla_put_failure;
	FUNC9(skb2, nlh2);

	ret = FUNC5(ctnl, skb2, FUNC0(skb).portid, MSG_DONTWAIT);
	if (ret < 0)
		return ret;

	return 0;

nla_put_failure:
	FUNC8(skb2, nlh2);
nlmsg_failure:
	FUNC4(skb2);
	return -EMSGSIZE;
}