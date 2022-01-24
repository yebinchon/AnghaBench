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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/  garp_port; } ;
struct garp_port {int /*<<< orphan*/ * applicants; } ;
struct garp_attr {int dummy; } ;
struct garp_application {size_t type; } ;
struct garp_applicant {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GARP_EVENT_REQ_JOIN ; 
 struct garp_attr* FUNC0 (struct garp_applicant*,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct garp_applicant*,struct garp_attr*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(const struct net_device *dev,
		      const struct garp_application *appl,
		      const void *data, u8 len, u8 type)
{
	struct garp_port *port = FUNC2(dev->garp_port);
	struct garp_applicant *app = FUNC2(port->applicants[appl->type]);
	struct garp_attr *attr;

	FUNC3(&app->lock);
	attr = FUNC0(app, data, len, type);
	if (!attr) {
		FUNC4(&app->lock);
		return -ENOMEM;
	}
	FUNC1(app, attr, GARP_EVENT_REQ_JOIN);
	FUNC4(&app->lock);
	return 0;
}