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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct in6_addr {int dummy; } ;
struct mld_msg {struct in6_addr mld_mca; } ;
struct mld2_query {scalar_t__ mld2q_nsrcs; int /*<<< orphan*/  mld2q_srcs; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int mca_flags; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_addr; struct ifmcaddr6* next; } ;
struct icmp6hdr {int dummy; } ;
struct TYPE_4__ {int flags; scalar_t__ ra; } ;
struct TYPE_3__ {scalar_t__ payload_len; int hop_limit; struct in6_addr const saddr; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IP6SKB_ROUTERALERT ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MULTICAST ; 
 int /*<<< orphan*/  IPV6_OPT_ROUTERALERT_MLD ; 
 int MAF_GSQUERY ; 
 int MAF_TIMER_RUNNING ; 
 int MLD_V1_QUERY_LEN ; 
 int MLD_V2_QUERY_LEN_MIN ; 
 struct inet6_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmcaddr6*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct in6_addr const*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct inet6_dev*) ; 
 scalar_t__ FUNC9 (struct inet6_dev*) ; 
 scalar_t__ FUNC10 (struct ifmcaddr6*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inet6_dev*,struct mld_msg*,unsigned long*,int) ; 
 int FUNC12 (struct inet6_dev*,struct mld2_query*,unsigned long*) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct sk_buff *skb)
{
	struct mld2_query *mlh2 = NULL;
	struct ifmcaddr6 *ma;
	const struct in6_addr *group;
	unsigned long max_delay;
	struct inet6_dev *idev;
	struct mld_msg *mld;
	int group_type;
	int mark = 0;
	int len, err;

	if (!FUNC14(skb, sizeof(struct in6_addr)))
		return -EINVAL;

	/* compute payload length excluding extension headers */
	len = FUNC13(FUNC7(skb)->payload_len) + sizeof(struct ipv6hdr);
	len -= FUNC17(skb);

	/* RFC3810 6.2
	 * Upon reception of an MLD message that contains a Query, the node
	 * checks if the source address of the message is a valid link-local
	 * address, if the Hop Limit is set to 1, and if the Router Alert
	 * option is present in the Hop-By-Hop Options header of the IPv6
	 * packet.  If any of these checks fails, the packet is dropped.
	 */
	if (!(FUNC6(&FUNC7(skb)->saddr) & IPV6_ADDR_LINKLOCAL) ||
	    FUNC7(skb)->hop_limit != 1 ||
	    !(FUNC0(skb)->flags & IP6SKB_ROUTERALERT) ||
	    FUNC0(skb)->ra != FUNC2(IPV6_OPT_ROUTERALERT_MLD))
		return -EINVAL;

	idev = FUNC1(skb->dev);
	if (!idev)
		return 0;

	mld = (struct mld_msg *)FUNC3(skb);
	group = &mld->mld_mca;
	group_type = FUNC6(group);

	if (group_type != IPV6_ADDR_ANY &&
	    !(group_type&IPV6_ADDR_MULTICAST))
		return -EINVAL;

	if (len < MLD_V1_QUERY_LEN) {
		return -EINVAL;
	} else if (len == MLD_V1_QUERY_LEN || FUNC9(idev)) {
		err = FUNC11(idev, mld, &max_delay,
				     len == MLD_V1_QUERY_LEN);
		if (err < 0)
			return err;
	} else if (len >= MLD_V2_QUERY_LEN_MIN) {
		int srcs_offset = sizeof(struct mld2_query) -
				  sizeof(struct icmp6hdr);

		if (!FUNC14(skb, srcs_offset))
			return -EINVAL;

		mlh2 = (struct mld2_query *)FUNC18(skb);

		err = FUNC12(idev, mlh2, &max_delay);
		if (err < 0)
			return err;

		if (group_type == IPV6_ADDR_ANY) { /* general query */
			if (mlh2->mld2q_nsrcs)
				return -EINVAL; /* no sources allowed */

			FUNC8(idev);
			return 0;
		}
		/* mark sources to include, if group & source-specific */
		if (mlh2->mld2q_nsrcs != 0) {
			if (!FUNC14(skb, srcs_offset +
			    FUNC13(mlh2->mld2q_nsrcs) * sizeof(struct in6_addr)))
				return -EINVAL;

			mlh2 = (struct mld2_query *)FUNC18(skb);
			mark = 1;
		}
	} else {
		return -EINVAL;
	}

	FUNC15(&idev->lock);
	if (group_type == IPV6_ADDR_ANY) {
		for (ma = idev->mc_list; ma; ma = ma->next) {
			FUNC19(&ma->mca_lock);
			FUNC4(ma, max_delay);
			FUNC20(&ma->mca_lock);
		}
	} else {
		for (ma = idev->mc_list; ma; ma = ma->next) {
			if (!FUNC5(group, &ma->mca_addr))
				continue;
			FUNC19(&ma->mca_lock);
			if (ma->mca_flags & MAF_TIMER_RUNNING) {
				/* gsquery <- gsquery && mark */
				if (!mark)
					ma->mca_flags &= ~MAF_GSQUERY;
			} else {
				/* gsquery <- mark */
				if (mark)
					ma->mca_flags |= MAF_GSQUERY;
				else
					ma->mca_flags &= ~MAF_GSQUERY;
			}
			if (!(ma->mca_flags & MAF_GSQUERY) ||
			    FUNC10(ma, FUNC13(mlh2->mld2q_nsrcs), mlh2->mld2q_srcs))
				FUNC4(ma, max_delay);
			FUNC20(&ma->mca_lock);
			break;
		}
	}
	FUNC16(&idev->lock);

	return 0;
}