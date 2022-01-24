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
struct inet6_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; struct ifacaddr6* ac_list; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {scalar_t__ aca_users; int /*<<< orphan*/  aca_rt; int /*<<< orphan*/  aca_addr; struct ifacaddr6* aca_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct ifacaddr6*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifacaddr6*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct inet6_dev *idev, const struct in6_addr *addr)
{
	struct ifacaddr6 *aca, *prev_aca;

	FUNC0();

	FUNC7(&idev->lock);
	prev_aca = NULL;
	for (aca = idev->ac_list; aca; aca = aca->aca_next) {
		if (FUNC5(&aca->aca_addr, addr))
			break;
		prev_aca = aca;
	}
	if (!aca) {
		FUNC8(&idev->lock);
		return -ENOENT;
	}
	if (--aca->aca_users > 0) {
		FUNC8(&idev->lock);
		return 0;
	}
	if (prev_aca)
		prev_aca->aca_next = aca->aca_next;
	else
		idev->ac_list = aca->aca_next;
	FUNC8(&idev->lock);
	FUNC6(aca);
	FUNC2(idev, &aca->aca_addr);

	FUNC4(FUNC3(idev->dev), aca->aca_rt);

	FUNC1(aca);
	return 0;
}