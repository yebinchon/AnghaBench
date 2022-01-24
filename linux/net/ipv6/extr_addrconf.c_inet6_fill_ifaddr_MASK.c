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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet6_ifaddr {int flags; scalar_t__ prefered_lft; scalar_t__ valid_lft; long tstamp; int rt_priority; int /*<<< orphan*/  cstamp; int /*<<< orphan*/  addr; int /*<<< orphan*/  peer_addr; TYPE_2__* idev; int /*<<< orphan*/  scope; int /*<<< orphan*/  prefix_len; } ;
struct inet6_fill_args {scalar_t__ netnsid; int /*<<< orphan*/  flags; int /*<<< orphan*/  event; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct ifaddrmsg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 long HZ ; 
 int /*<<< orphan*/  IFA_ADDRESS ; 
 int /*<<< orphan*/  IFA_FLAGS ; 
 int IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_RT_PRIORITY ; 
 int /*<<< orphan*/  IFA_TARGET_NETNSID ; 
 scalar_t__ INFINITY_LIFE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long jiffies ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct nlmsghdr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct inet6_ifaddr *ifa,
			     struct inet6_fill_args *args)
{
	struct nlmsghdr  *nlh;
	u32 preferred, valid;

	nlh = FUNC6(skb, args->portid, args->seq, args->event,
			sizeof(struct ifaddrmsg), args->flags);
	if (!nlh)
		return -EMSGSIZE;

	FUNC8(nlh, ifa->prefix_len, ifa->flags, FUNC9(ifa->scope),
		      ifa->idev->dev->ifindex);

	if (args->netnsid >= 0 &&
	    FUNC2(skb, IFA_TARGET_NETNSID, args->netnsid))
		goto error;

	if (!((ifa->flags&IFA_F_PERMANENT) &&
	      (ifa->prefered_lft == INFINITY_LIFE_TIME))) {
		preferred = ifa->prefered_lft;
		valid = ifa->valid_lft;
		if (preferred != INFINITY_LIFE_TIME) {
			long tval = (jiffies - ifa->tstamp)/HZ;
			if (preferred > tval)
				preferred -= tval;
			else
				preferred = 0;
			if (valid != INFINITY_LIFE_TIME) {
				if (valid > tval)
					valid -= tval;
				else
					valid = 0;
			}
		}
	} else {
		preferred = INFINITY_LIFE_TIME;
		valid = INFINITY_LIFE_TIME;
	}

	if (!FUNC0(&ifa->peer_addr)) {
		if (FUNC1(skb, IFA_LOCAL, &ifa->addr) < 0 ||
		    FUNC1(skb, IFA_ADDRESS, &ifa->peer_addr) < 0)
			goto error;
	} else
		if (FUNC1(skb, IFA_ADDRESS, &ifa->addr) < 0)
			goto error;

	if (ifa->rt_priority &&
	    FUNC3(skb, IFA_RT_PRIORITY, ifa->rt_priority))
		goto error;

	if (FUNC7(skb, ifa->cstamp, ifa->tstamp, preferred, valid) < 0)
		goto error;

	if (FUNC3(skb, IFA_FLAGS, ifa->flags) < 0)
		goto error;

	FUNC5(skb, nlh);
	return 0;

error:
	FUNC4(skb, nlh);
	return -EMSGSIZE;
}