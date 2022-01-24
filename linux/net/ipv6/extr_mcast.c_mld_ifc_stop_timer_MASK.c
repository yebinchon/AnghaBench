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
struct inet6_dev {int /*<<< orphan*/  mc_ifc_timer; scalar_t__ mc_ifc_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct inet6_dev *idev)
{
	idev->mc_ifc_count = 0;
	if (FUNC1(&idev->mc_ifc_timer))
		FUNC0(idev);
}