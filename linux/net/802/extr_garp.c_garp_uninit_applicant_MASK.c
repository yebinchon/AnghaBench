#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  garp_port; } ;
struct garp_port {int /*<<< orphan*/ * applicants; } ;
struct TYPE_2__ {int /*<<< orphan*/  group_address; } ;
struct garp_application {size_t type; TYPE_1__ proto; } ;
struct garp_applicant {int /*<<< orphan*/  lock; int /*<<< orphan*/  join_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GARP_EVENT_TRANSMIT_PDU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct garp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC6 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct garp_applicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct net_device *dev, struct garp_application *appl)
{
	struct garp_port *port = FUNC9(dev->garp_port);
	struct garp_applicant *app = FUNC9(port->applicants[appl->type]);

	FUNC0();

	FUNC1(port->applicants[appl->type], NULL);

	/* Delete timer and generate a final TRANSMIT_PDU event to flush out
	 * all pending messages before the applicant is gone. */
	FUNC2(&app->join_timer);

	FUNC10(&app->lock);
	FUNC4(app, GARP_EVENT_TRANSMIT_PDU);
	FUNC5(app);
	FUNC11(&app->lock);

	FUNC6(app);

	FUNC3(dev, appl->proto.group_address);
	FUNC8(app, rcu);
	FUNC7(dev);
}