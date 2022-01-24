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
struct garp_applicant {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GARP_EVENT_TRANSMIT_PDU ; 
 struct garp_applicant* app ; 
 struct garp_applicant* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct garp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct garp_applicant*) ; 
 int /*<<< orphan*/  join_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct garp_applicant *app = FUNC0(app, t, join_timer);

	FUNC5(&app->lock);
	FUNC1(app, GARP_EVENT_TRANSMIT_PDU);
	FUNC3(app);
	FUNC6(&app->lock);

	FUNC4(app);
	FUNC2(app);
}