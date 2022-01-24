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
struct inet6_ifaddr {int state; int flags; TYPE_1__* idev; int /*<<< orphan*/  if_list; struct inet6_ifaddr* ifpub; int /*<<< orphan*/  tmp_list; int /*<<< orphan*/  addr_lst; int /*<<< orphan*/  lock; } ;
typedef  enum cleanup_prefix_rt_t { ____Placeholder_cleanup_prefix_rt_t } cleanup_prefix_rt_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CLEANUP_PREFIX_RT_DEL ; 
 int CLEANUP_PREFIX_RT_NOP ; 
 int IFA_F_NOPREFIXROUTE ; 
 int IFA_F_PERMANENT ; 
 int IFA_F_TEMPORARY ; 
 int INET6_IFADDR_STATE_DEAD ; 
 int /*<<< orphan*/  NETDEV_DOWN ; 
 int /*<<< orphan*/  RTM_DELADDR ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  addrconf_hash_lock ; 
 int FUNC3 (struct inet6_ifaddr*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_ifaddr*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct inet6_ifaddr *ifp)
{
	int state;
	enum cleanup_prefix_rt_t action = CLEANUP_PREFIX_RT_NOP;
	unsigned long expires;

	FUNC0();

	FUNC12(&ifp->lock);
	state = ifp->state;
	ifp->state = INET6_IFADDR_STATE_DEAD;
	FUNC13(&ifp->lock);

	if (state == INET6_IFADDR_STATE_DEAD)
		goto out;

	FUNC12(&addrconf_hash_lock);
	FUNC5(&ifp->addr_lst);
	FUNC13(&addrconf_hash_lock);

	FUNC14(&ifp->idev->lock);

	if (ifp->flags&IFA_F_TEMPORARY) {
		FUNC9(&ifp->tmp_list);
		if (ifp->ifpub) {
			FUNC6(ifp->ifpub);
			ifp->ifpub = NULL;
		}
		FUNC1(ifp);
	}

	if (ifp->flags & IFA_F_PERMANENT && !(ifp->flags & IFA_F_NOPREFIXROUTE))
		action = FUNC3(ifp, &expires);

	FUNC10(&ifp->if_list);
	FUNC1(ifp);

	FUNC15(&ifp->idev->lock);

	FUNC2(ifp);

	FUNC8(RTM_DELADDR, ifp);

	FUNC7(NETDEV_DOWN, ifp);

	if (action != CLEANUP_PREFIX_RT_NOP) {
		FUNC4(ifp, expires,
			action == CLEANUP_PREFIX_RT_DEL);
	}

	/* clean up prefsrc entries */
	FUNC11(ifp);
out:
	FUNC6(ifp);
}