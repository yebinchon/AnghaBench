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
 int /*<<< orphan*/  MRP_EVENT_TX ; 
 struct mrp_applicant* app ; 
 struct mrp_applicant* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  join_timer ; 
 int /*<<< orphan*/  FUNC1 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct mrp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct mrp_applicant *app = FUNC0(app, t, join_timer);

	FUNC5(&app->lock);
	FUNC2(app, MRP_EVENT_TX);
	FUNC3(app);
	FUNC6(&app->lock);

	FUNC4(app);
	FUNC1(app);
}