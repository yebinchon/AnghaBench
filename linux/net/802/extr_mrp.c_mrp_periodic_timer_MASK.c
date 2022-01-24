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
struct mrp_applicant {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MRP_EVENT_PERIODIC ; 
 struct mrp_applicant* app ; 
 struct mrp_applicant* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mrp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  periodic_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct mrp_applicant *app = FUNC0(app, t, periodic_timer);

	FUNC4(&app->lock);
	FUNC1(app, MRP_EVENT_PERIODIC);
	FUNC2(app);
	FUNC5(&app->lock);

	FUNC3(app);
}