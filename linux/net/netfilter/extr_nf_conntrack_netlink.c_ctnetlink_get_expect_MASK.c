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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  done; int /*<<< orphan*/  dump; } ;
struct net {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 size_t CTA_EXPECT_ID ; 
 size_t CTA_EXPECT_MASTER ; 
 size_t CTA_EXPECT_TUPLE ; 
 size_t CTA_EXPECT_ZONE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPCTNL_MSG_EXP_NEW ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int NLM_F_DUMP ; 
 int FUNC1 (struct net*,struct sock*,struct sk_buff*,struct nlmsghdr const*,struct nlattr const* const*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  ctnetlink_exp_done ; 
 int /*<<< orphan*/  ctnetlink_exp_dump_table ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conntrack_expect*) ; 
 int FUNC3 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nlattr const* const,struct nf_conntrack_zone*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 int FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_expect* FUNC8 (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conntrack_expect*) ; 
 scalar_t__ FUNC10 (struct nf_conntrack_expect*) ; 
 scalar_t__ FUNC11 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC12 (struct nlmsghdr const*) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int FUNC16(struct net *net, struct sock *ctnl,
				struct sk_buff *skb, const struct nlmsghdr *nlh,
				const struct nlattr * const cda[],
				struct netlink_ext_ack *extack)
{
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_expect *exp;
	struct sk_buff *skb2;
	struct nfgenmsg *nfmsg = FUNC12(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	struct nf_conntrack_zone zone;
	int err;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		if (cda[CTA_EXPECT_MASTER])
			return FUNC1(net, ctnl, skb, nlh, cda,
						     extack);
		else {
			struct netlink_dump_control c = {
				.dump = ctnetlink_exp_dump_table,
				.done = ctnetlink_exp_done,
			};
			return FUNC6(ctnl, skb, nlh, &c);
		}
	}

	err = FUNC4(cda[CTA_EXPECT_ZONE], &zone);
	if (err < 0)
		return err;

	if (cda[CTA_EXPECT_TUPLE])
		err = FUNC3(cda, &tuple, CTA_EXPECT_TUPLE,
					    u3, NULL);
	else if (cda[CTA_EXPECT_MASTER])
		err = FUNC3(cda, &tuple, CTA_EXPECT_MASTER,
					    u3, NULL);
	else
		return -EINVAL;

	if (err < 0)
		return err;

	exp = FUNC8(net, &zone, &tuple);
	if (!exp)
		return -ENOENT;

	if (cda[CTA_EXPECT_ID]) {
		__be32 id = FUNC11(cda[CTA_EXPECT_ID]);

		if (id != FUNC10(exp)) {
			FUNC9(exp);
			return -ENOENT;
		}
	}

	err = -ENOMEM;
	skb2 = FUNC13(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL) {
		FUNC9(exp);
		goto out;
	}

	FUNC14();
	err = FUNC2(skb2, FUNC0(skb).portid,
				      nlh->nlmsg_seq, IPCTNL_MSG_EXP_NEW, exp);
	FUNC15();
	FUNC9(exp);
	if (err <= 0)
		goto free;

	err = FUNC7(ctnl, skb2, FUNC0(skb).portid, MSG_DONTWAIT);
	if (err < 0)
		goto out;

	return 0;

free:
	FUNC5(skb2);
out:
	/* this avoids a loop in nfnetlink. */
	return err == -EAGAIN ? -ENOBUFS : err;
}