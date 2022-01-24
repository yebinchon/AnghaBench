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
struct mld2_query {int dummy; } ;
struct inet6_dev {unsigned long mc_maxdelay; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*,struct mld2_query*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*,struct mld2_query*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*,struct mld2_query*) ; 
 int /*<<< orphan*/  FUNC4 (struct mld2_query*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inet6_dev *idev, struct mld2_query *mld,
			  unsigned long *max_delay)
{
	*max_delay = FUNC0(FUNC5(FUNC4(mld)), 1UL);

	FUNC3(idev, mld);
	FUNC1(idev, mld);
	FUNC2(idev, mld);

	idev->mc_maxdelay = *max_delay;

	return 0;
}