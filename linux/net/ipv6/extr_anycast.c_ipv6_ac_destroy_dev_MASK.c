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
struct inet6_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; struct ifacaddr6* ac_list; } ;
struct ifacaddr6 {int /*<<< orphan*/  aca_rt; int /*<<< orphan*/  aca_addr; struct ifacaddr6* aca_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifacaddr6*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifacaddr6*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct inet6_dev *idev)
{
	struct ifacaddr6 *aca;

	FUNC5(&idev->lock);
	while ((aca = idev->ac_list) != NULL) {
		idev->ac_list = aca->aca_next;
		FUNC6(&idev->lock);

		FUNC4(aca);

		FUNC1(idev, &aca->aca_addr);

		FUNC3(FUNC2(idev->dev), aca->aca_rt);

		FUNC0(aca);

		FUNC5(&idev->lock);
	}
	FUNC6(&idev->lock);
}