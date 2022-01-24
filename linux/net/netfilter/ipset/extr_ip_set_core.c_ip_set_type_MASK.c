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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IPSET_ATTR_FAMILY ; 
 size_t IPSET_ATTR_PROTOCOL ; 
 size_t IPSET_ATTR_REVISION ; 
 size_t IPSET_ATTR_REVISION_MIN ; 
 size_t IPSET_ATTR_TYPENAME ; 
 int /*<<< orphan*/  IPSET_CMD_TYPE ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const* const) ; 
 scalar_t__ FUNC6 (struct sk_buff*,size_t,char const*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr const* const*) ; 
 scalar_t__ FUNC13 (struct nlattr const* const*) ; 
 struct nlmsghdr* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct net *net, struct sock *ctnl, struct sk_buff *skb,
		       const struct nlmsghdr *nlh,
		       const struct nlattr * const attr[],
		       struct netlink_ext_ack *extack)
{
	struct sk_buff *skb2;
	struct nlmsghdr *nlh2;
	u8 family, min, max;
	const char *typename;
	int ret = 0;

	if (FUNC15(FUNC13(attr) ||
		     !attr[IPSET_ATTR_TYPENAME] ||
		     !attr[IPSET_ATTR_FAMILY]))
		return -IPSET_ERR_PROTOCOL;

	family = FUNC5(attr[IPSET_ATTR_FAMILY]);
	typename = FUNC4(attr[IPSET_ATTR_TYPENAME]);
	ret = FUNC1(typename, family, &min, &max);
	if (ret)
		return ret;

	skb2 = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!skb2)
		return -ENOMEM;

	nlh2 = FUNC14(skb2, FUNC0(skb).portid, nlh->nlmsg_seq, 0,
			 IPSET_CMD_TYPE);
	if (!nlh2)
		goto nlmsg_failure;
	if (FUNC7(skb2, IPSET_ATTR_PROTOCOL, FUNC12(attr)) ||
	    FUNC6(skb2, IPSET_ATTR_TYPENAME, typename) ||
	    FUNC7(skb2, IPSET_ATTR_FAMILY, family) ||
	    FUNC7(skb2, IPSET_ATTR_REVISION, max) ||
	    FUNC7(skb2, IPSET_ATTR_REVISION_MIN, min))
		goto nla_put_failure;
	FUNC9(skb2, nlh2);

	FUNC11("Send TYPE, nlmsg_len: %u\n", nlh2->nlmsg_len);
	ret = FUNC3(ctnl, skb2, FUNC0(skb).portid, MSG_DONTWAIT);
	if (ret < 0)
		return ret;

	return 0;

nla_put_failure:
	FUNC8(skb2, nlh2);
nlmsg_failure:
	FUNC2(skb2);
	return -EMSGSIZE;
}