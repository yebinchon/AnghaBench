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
struct inet6_dev {scalar_t__ mc_dad_count; scalar_t__ mc_qrv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 

void FUNC3(struct inet6_dev *idev)
{
	idev->mc_dad_count = idev->mc_qrv;
	if (idev->mc_dad_count) {
		FUNC1(idev);
		idev->mc_dad_count--;
		if (idev->mc_dad_count)
			FUNC0(idev,
					    FUNC2(idev));
	}
}