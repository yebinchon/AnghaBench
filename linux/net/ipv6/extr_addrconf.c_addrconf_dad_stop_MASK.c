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
struct inet6_ifaddr {int flags; int /*<<< orphan*/  lock; struct inet6_ifaddr* ifpub; } ;

/* Variables and functions */
 int IFA_F_DADFAILED ; 
 int IFA_F_OPTIMISTIC ; 
 int IFA_F_PERMANENT ; 
 int IFA_F_TEMPORARY ; 
 int IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_ifaddr*,struct inet6_ifaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct inet6_ifaddr *ifp, int dad_failed)
{
	if (dad_failed)
		ifp->flags |= IFA_F_DADFAILED;

	if (ifp->flags&IFA_F_TEMPORARY) {
		struct inet6_ifaddr *ifpub;
		FUNC6(&ifp->lock);
		ifpub = ifp->ifpub;
		if (ifpub) {
			FUNC1(ifpub);
			FUNC7(&ifp->lock);
			FUNC3(ifpub, ifp, true);
			FUNC2(ifpub);
		} else {
			FUNC7(&ifp->lock);
		}
		FUNC4(ifp);
	} else if (ifp->flags&IFA_F_PERMANENT || !dad_failed) {
		FUNC6(&ifp->lock);
		FUNC0(ifp);
		ifp->flags |= IFA_F_TENTATIVE;
		if (dad_failed)
			ifp->flags &= ~IFA_F_OPTIMISTIC;
		FUNC7(&ifp->lock);
		if (dad_failed)
			FUNC5(0, ifp);
		FUNC2(ifp);
	} else {
		FUNC4(ifp);
	}
}