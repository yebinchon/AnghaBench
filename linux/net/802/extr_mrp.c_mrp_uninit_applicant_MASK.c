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
struct net_device {int /*<<< orphan*/  mrp_port; } ;
struct mrp_port {int /*<<< orphan*/ * applicants; } ;
struct mrp_application {size_t type; int /*<<< orphan*/  group_address; } ;
struct mrp_applicant {int /*<<< orphan*/  lock; int /*<<< orphan*/  periodic_timer; int /*<<< orphan*/  join_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MRP_EVENT_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mrp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mrp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  rcu ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct net_device *dev, struct mrp_application *appl)
{
	struct mrp_port *port = FUNC9(dev->mrp_port);
	struct mrp_applicant *app = FUNC9(
		port->applicants[appl->type]);

	FUNC0();

	FUNC1(port->applicants[appl->type], NULL);

	/* Delete timer and generate a final TX event to flush out
	 * all pending messages before the applicant is gone.
	 */
	FUNC2(&app->join_timer);
	FUNC2(&app->periodic_timer);

	FUNC10(&app->lock);
	FUNC5(app, MRP_EVENT_TX);
	FUNC6(app);
	FUNC11(&app->lock);

	FUNC7(app);

	FUNC3(dev, appl->group_address);
	FUNC4(app, rcu);
	FUNC8(dev);
}