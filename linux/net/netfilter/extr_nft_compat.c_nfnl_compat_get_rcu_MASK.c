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
typedef  void* u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
#define  AF_INET 131 
#define  AF_INET6 130 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFNL_MSG_COMPAT_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  NFPROTO_ARP 129 
#define  NFPROTO_BRIDGE 128 
 size_t NFTA_COMPAT_NAME ; 
 size_t NFTA_COMPAT_REV ; 
 size_t NFTA_COMPAT_TYPE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,int,int) ; 
 char* FUNC6 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC8 (struct nlmsghdr const*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int,char const*,void*,int,int*) ; 

__attribute__((used)) static int FUNC17(struct net *net, struct sock *nfnl,
			       struct sk_buff *skb, const struct nlmsghdr *nlh,
			       const struct nlattr * const tb[],
			       struct netlink_ext_ack *extack)
{
	int ret = 0, target;
	struct nfgenmsg *nfmsg;
	const char *fmt;
	const char *name;
	u32 rev;
	struct sk_buff *skb2;

	if (tb[NFTA_COMPAT_NAME] == NULL ||
	    tb[NFTA_COMPAT_REV] == NULL ||
	    tb[NFTA_COMPAT_TYPE] == NULL)
		return -EINVAL;

	name = FUNC6(tb[NFTA_COMPAT_NAME]);
	rev = FUNC10(FUNC7(tb[NFTA_COMPAT_REV]));
	target = FUNC10(FUNC7(tb[NFTA_COMPAT_TYPE]));

	nfmsg = FUNC8(nlh);

	switch(nfmsg->nfgen_family) {
	case AF_INET:
		fmt = "ipt_%s";
		break;
	case AF_INET6:
		fmt = "ip6t_%s";
		break;
	case NFPROTO_BRIDGE:
		fmt = "ebt_%s";
		break;
	case NFPROTO_ARP:
		fmt = "arpt_%s";
		break;
	default:
		FUNC11("nft_compat: unsupported protocol %d\n",
			nfmsg->nfgen_family);
		return -EINVAL;
	}

	if (!FUNC14(THIS_MODULE))
		return -EINVAL;

	FUNC13();
	FUNC15(FUNC16(nfmsg->nfgen_family, name,
						 rev, target, &ret),
						 fmt, name);
	if (ret < 0)
		goto out_put;

	skb2 = FUNC9(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL) {
		ret = -ENOMEM;
		goto out_put;
	}

	/* include the best revision for this extension in the message */
	if (FUNC5(skb2, FUNC0(skb).portid,
				  nlh->nlmsg_seq,
				  FUNC1(nlh->nlmsg_type),
				  NFNL_MSG_COMPAT_GET,
				  nfmsg->nfgen_family,
				  name, ret, target) <= 0) {
		FUNC2(skb2);
		goto out_put;
	}

	ret = FUNC4(nfnl, skb2, FUNC0(skb).portid,
				MSG_DONTWAIT);
	if (ret > 0)
		ret = 0;
out_put:
	FUNC12();
	FUNC3(THIS_MODULE);
	return ret == -EAGAIN ? -ENOBUFS : ret;
}