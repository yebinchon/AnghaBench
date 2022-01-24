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
struct nlmsghdr {int nlmsg_flags; int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {void* data; int /*<<< orphan*/  done; int /*<<< orphan*/  dump; int /*<<< orphan*/  start; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 size_t CTA_TUPLE_ORIG ; 
 size_t CTA_TUPLE_REPLY ; 
 size_t CTA_ZONE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int NLM_F_DUMP ; 
 int /*<<< orphan*/  ctnetlink_done ; 
 int /*<<< orphan*/  ctnetlink_dump_table ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nf_conn*) ; 
 int FUNC3 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ,struct nf_conntrack_zone*) ; 
 int FUNC4 (struct nlattr const* const,struct nf_conntrack_zone*) ; 
 int /*<<< orphan*/  ctnetlink_start ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 int FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC8 (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*) ; 
 struct nf_conn* FUNC10 (struct nf_conntrack_tuple_hash*) ; 
 struct nfgenmsg* FUNC11 (struct nlmsghdr const*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sock *ctnl,
				   struct sk_buff *skb,
				   const struct nlmsghdr *nlh,
				   const struct nlattr * const cda[],
				   struct netlink_ext_ack *extack)
{
	struct nf_conntrack_tuple_hash *h;
	struct nf_conntrack_tuple tuple;
	struct nf_conn *ct;
	struct sk_buff *skb2 = NULL;
	struct nfgenmsg *nfmsg = FUNC11(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	struct nf_conntrack_zone zone;
	int err;

	if (nlh->nlmsg_flags & NLM_F_DUMP) {
		struct netlink_dump_control c = {
			.start = ctnetlink_start,
			.dump = ctnetlink_dump_table,
			.done = ctnetlink_done,
			.data = (void *)cda,
		};

		return FUNC6(ctnl, skb, nlh, &c);
	}

	err = FUNC4(cda[CTA_ZONE], &zone);
	if (err < 0)
		return err;

	if (cda[CTA_TUPLE_ORIG])
		err = FUNC3(cda, &tuple, CTA_TUPLE_ORIG,
					    u3, &zone);
	else if (cda[CTA_TUPLE_REPLY])
		err = FUNC3(cda, &tuple, CTA_TUPLE_REPLY,
					    u3, &zone);
	else
		return -EINVAL;

	if (err < 0)
		return err;

	h = FUNC8(net, &zone, &tuple);
	if (!h)
		return -ENOENT;

	ct = FUNC10(h);

	err = -ENOMEM;
	skb2 = FUNC12(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL) {
		FUNC9(ct);
		return -ENOMEM;
	}

	FUNC13();
	err = FUNC2(skb2, FUNC0(skb).portid, nlh->nlmsg_seq,
				  FUNC1(nlh->nlmsg_type), ct);
	FUNC14();
	FUNC9(ct);
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