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
typedef  scalar_t__ u32 ;
struct inet6_ifaddr {int flags; int prefix_len; unsigned long valid_lft; unsigned long prefered_lft; scalar_t__ rt_priority; TYPE_1__* idev; int /*<<< orphan*/  addr; int /*<<< orphan*/  lock; int /*<<< orphan*/  tstamp; } ;
struct ifa6_config {unsigned long valid_lft; unsigned long preferred_lft; int ifa_flags; scalar_t__ rt_priority; } ;
typedef  enum cleanup_prefix_rt_t { ____Placeholder_cleanup_prefix_rt_t } cleanup_prefix_rt_t ;
typedef  scalar_t__ clock_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CLEANUP_PREFIX_RT_DEL ; 
 int CLEANUP_PREFIX_RT_NOP ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long HZ ; 
 int IFA_F_DADFAILED ; 
 int IFA_F_DEPRECATED ; 
 int IFA_F_HOMEADDRESS ; 
 int IFA_F_MANAGETEMPADDR ; 
 int IFA_F_NODAD ; 
 int IFA_F_NOPREFIXROUTE ; 
 int IFA_F_OPTIMISTIC ; 
 int IFA_F_PERMANENT ; 
 int IFA_F_TEMPORARY ; 
 int IFA_F_TENTATIVE ; 
 scalar_t__ RTF_EXPIRES ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct inet6_ifaddr*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct inet6_ifaddr*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct inet6_ifaddr*,unsigned long,unsigned long,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inet6_ifaddr*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct inet6_ifaddr *ifp, struct ifa6_config *cfg)
{
	u32 flags;
	clock_t expires;
	unsigned long timeout;
	bool was_managetempaddr;
	bool had_prefixroute;

	FUNC0();

	if (!cfg->valid_lft || cfg->preferred_lft > cfg->valid_lft)
		return -EINVAL;

	if (cfg->ifa_flags & IFA_F_MANAGETEMPADDR &&
	    (ifp->flags & IFA_F_TEMPORARY || ifp->prefix_len != 64))
		return -EINVAL;

	if (!(ifp->flags & IFA_F_TENTATIVE) || ifp->flags & IFA_F_DADFAILED)
		cfg->ifa_flags &= ~IFA_F_OPTIMISTIC;

	timeout = FUNC3(cfg->valid_lft, HZ);
	if (FUNC1(timeout)) {
		expires = FUNC8(timeout * HZ);
		cfg->valid_lft = timeout;
		flags = RTF_EXPIRES;
	} else {
		expires = 0;
		flags = 0;
		cfg->ifa_flags |= IFA_F_PERMANENT;
	}

	timeout = FUNC3(cfg->preferred_lft, HZ);
	if (FUNC1(timeout)) {
		if (timeout == 0)
			cfg->ifa_flags |= IFA_F_DEPRECATED;
		cfg->preferred_lft = timeout;
	}

	FUNC11(&ifp->lock);
	was_managetempaddr = ifp->flags & IFA_F_MANAGETEMPADDR;
	had_prefixroute = ifp->flags & IFA_F_PERMANENT &&
			  !(ifp->flags & IFA_F_NOPREFIXROUTE);
	ifp->flags &= ~(IFA_F_DEPRECATED | IFA_F_PERMANENT | IFA_F_NODAD |
			IFA_F_HOMEADDRESS | IFA_F_MANAGETEMPADDR |
			IFA_F_NOPREFIXROUTE);
	ifp->flags |= cfg->ifa_flags;
	ifp->tstamp = jiffies;
	ifp->valid_lft = cfg->valid_lft;
	ifp->prefered_lft = cfg->preferred_lft;

	if (cfg->rt_priority && cfg->rt_priority != ifp->rt_priority)
		ifp->rt_priority = cfg->rt_priority;

	FUNC12(&ifp->lock);
	if (!(ifp->flags&IFA_F_TENTATIVE))
		FUNC7(0, ifp);

	if (!(cfg->ifa_flags & IFA_F_NOPREFIXROUTE)) {
		int rc = -ENOENT;

		if (had_prefixroute)
			rc = FUNC10(ifp, expires, flags);

		/* prefix route could have been deleted; if so restore it */
		if (rc == -ENOENT) {
			FUNC2(&ifp->addr, ifp->prefix_len,
					      ifp->rt_priority, ifp->idev->dev,
					      expires, flags, GFP_KERNEL);
		}
	} else if (had_prefixroute) {
		enum cleanup_prefix_rt_t action;
		unsigned long rt_expires;

		FUNC13(&ifp->idev->lock);
		action = FUNC5(ifp, &rt_expires);
		FUNC14(&ifp->idev->lock);

		if (action != CLEANUP_PREFIX_RT_NOP) {
			FUNC6(ifp, rt_expires,
				action == CLEANUP_PREFIX_RT_DEL);
		}
	}

	if (was_managetempaddr || ifp->flags & IFA_F_MANAGETEMPADDR) {
		if (was_managetempaddr &&
		    !(ifp->flags & IFA_F_MANAGETEMPADDR)) {
			cfg->valid_lft = 0;
			cfg->preferred_lft = 0;
		}
		FUNC9(ifp->idev, ifp, cfg->valid_lft,
				 cfg->preferred_lft, !was_managetempaddr,
				 jiffies);
	}

	FUNC4();

	return 0;
}