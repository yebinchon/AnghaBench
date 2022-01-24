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
struct net {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; struct ifacaddr6* ac_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {int /*<<< orphan*/  aca_addr; struct ifacaddr6* aca_next; int /*<<< orphan*/  aca_users; } ;
struct fib6_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (struct fib6_info*) ; 
 int FUNC2 (struct fib6_info*) ; 
 struct ifacaddr6* FUNC3 (struct fib6_info*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifacaddr6*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifacaddr6*) ; 
 struct fib6_info* FUNC6 (struct net*,struct inet6_dev*,struct in6_addr const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,struct fib6_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,struct ifacaddr6*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct inet6_dev *idev, const struct in6_addr *addr)
{
	struct ifacaddr6 *aca;
	struct fib6_info *f6i;
	struct net *net;
	int err;

	FUNC0();

	FUNC13(&idev->lock);
	if (idev->dead) {
		err = -ENODEV;
		goto out;
	}

	for (aca = idev->ac_list; aca; aca = aca->aca_next) {
		if (FUNC12(&aca->aca_addr, addr)) {
			aca->aca_users++;
			err = 0;
			goto out;
		}
	}

	net = FUNC8(idev->dev);
	f6i = FUNC6(net, idev, addr, true, GFP_ATOMIC);
	if (FUNC1(f6i)) {
		err = FUNC2(f6i);
		goto out;
	}
	aca = FUNC3(f6i, addr);
	if (!aca) {
		FUNC9(f6i);
		err = -ENOMEM;
		goto out;
	}

	aca->aca_next = idev->ac_list;
	idev->ac_list = aca;

	/* Hold this for addrconf_join_solict() below before we unlock,
	 * it is already exposed via idev->ac_list.
	 */
	FUNC4(aca);
	FUNC14(&idev->lock);

	FUNC11(net, aca);

	FUNC10(net, f6i);

	FUNC7(idev->dev, &aca->aca_addr);

	FUNC5(aca);
	return 0;
out:
	FUNC14(&idev->lock);
	return err;
}