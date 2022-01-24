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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {struct nf_conn* data; int /*<<< orphan*/  done; int /*<<< orphan*/  dump; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_EXPECT_MASTER ; 
 size_t CTA_EXPECT_ZONE ; 
 int ENOENT ; 
 int /*<<< orphan*/  ctnetlink_exp_ct_dump_table ; 
 int /*<<< orphan*/  ctnetlink_exp_done ; 
 int FUNC0 (struct nlattr const* const*,struct nf_conntrack_tuple*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nlattr const* const,struct nf_conntrack_zone*) ; 
 int FUNC2 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 struct nf_conntrack_tuple_hash* FUNC3 (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 struct nf_conn* FUNC5 (struct nf_conntrack_tuple_hash*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 struct nfgenmsg* FUNC7 (struct nlmsghdr const*) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct sock *ctnl,
				 struct sk_buff *skb,
				 const struct nlmsghdr *nlh,
				 const struct nlattr * const cda[],
				 struct netlink_ext_ack *extack)
{
	int err;
	struct nfgenmsg *nfmsg = FUNC7(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_tuple_hash *h;
	struct nf_conn *ct;
	struct nf_conntrack_zone zone;
	struct netlink_dump_control c = {
		.dump = ctnetlink_exp_ct_dump_table,
		.done = ctnetlink_exp_done,
	};

	err = FUNC0(cda, &tuple, CTA_EXPECT_MASTER,
				    u3, NULL);
	if (err < 0)
		return err;

	err = FUNC1(cda[CTA_EXPECT_ZONE], &zone);
	if (err < 0)
		return err;

	h = FUNC3(net, &zone, &tuple);
	if (!h)
		return -ENOENT;

	ct = FUNC5(h);
	/* No expectation linked to this connection tracking. */
	if (!FUNC6(ct)) {
		FUNC4(ct);
		return 0;
	}

	c.data = ct;

	err = FUNC2(ctnl, skb, nlh, &c);
	FUNC4(ct);

	return err;
}