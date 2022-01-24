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
struct timer_list {int dummy; } ;
struct inet6_dev {scalar_t__ mc_gq_running; } ;

/* Variables and functions */
 struct inet6_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct inet6_dev* idev ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*) ; 
 int /*<<< orphan*/  mc_gq_timer ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct inet6_dev *idev = FUNC0(idev, t, mc_gq_timer);

	idev->mc_gq_running = 0;
	FUNC2(idev, NULL);
	FUNC1(idev);
}