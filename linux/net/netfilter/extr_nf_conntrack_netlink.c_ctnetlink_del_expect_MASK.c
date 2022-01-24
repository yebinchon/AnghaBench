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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  timeout; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 size_t CTA_EXPECT_HELP_NAME ; 
 size_t CTA_EXPECT_ID ; 
 size_t CTA_EXPECT_TUPLE ; 
 size_t CTA_EXPECT_ZONE ; 
 int ENOENT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nlattr const* const,struct nf_conntrack_zone*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  expect_iter_all ; 
 int /*<<< orphan*/  expect_iter_name ; 
 int /*<<< orphan*/  nf_conntrack_expect_lock ; 
 struct nf_conntrack_expect* FUNC4 (struct net*,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conntrack_expect*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr const* const) ; 
 struct nfgenmsg* FUNC10 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC11 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sock *ctnl,
				struct sk_buff *skb, const struct nlmsghdr *nlh,
				const struct nlattr * const cda[],
				struct netlink_ext_ack *extack)
{
	struct nf_conntrack_expect *exp;
	struct nf_conntrack_tuple tuple;
	struct nfgenmsg *nfmsg = FUNC10(nlh);
	u_int8_t u3 = nfmsg->nfgen_family;
	struct nf_conntrack_zone zone;
	int err;

	if (cda[CTA_EXPECT_TUPLE]) {
		/* delete a single expect by tuple */
		err = FUNC2(cda[CTA_EXPECT_ZONE], &zone);
		if (err < 0)
			return err;

		err = FUNC1(cda, &tuple, CTA_EXPECT_TUPLE,
					    u3, NULL);
		if (err < 0)
			return err;

		/* bump usage count to 2 */
		exp = FUNC4(net, &zone, &tuple);
		if (!exp)
			return -ENOENT;

		if (cda[CTA_EXPECT_ID]) {
			__be32 id = FUNC9(cda[CTA_EXPECT_ID]);
			if (FUNC12(id) != (u32)(unsigned long)exp) {
				FUNC6(exp);
				return -ENOENT;
			}
		}

		/* after list removal, usage count == 1 */
		FUNC13(&nf_conntrack_expect_lock);
		if (FUNC3(&exp->timeout)) {
			FUNC7(exp, FUNC0(skb).portid,
						   FUNC11(nlh));
			FUNC6(exp);
		}
		FUNC14(&nf_conntrack_expect_lock);
		/* have to put what we 'get' above.
		 * after this line usage count == 0 */
		FUNC6(exp);
	} else if (cda[CTA_EXPECT_HELP_NAME]) {
		char *name = FUNC8(cda[CTA_EXPECT_HELP_NAME]);

		FUNC5(net, expect_iter_name, name,
					 FUNC0(skb).portid,
					 FUNC11(nlh));
	} else {
		/* This basically means we have to flush everything*/
		FUNC5(net, expect_iter_all, NULL,
					 FUNC0(skb).portid,
					 FUNC11(nlh));
	}

	return 0;
}