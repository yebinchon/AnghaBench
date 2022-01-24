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
struct net_device {TYPE_1__* mrp_port; } ;
struct mrp_application {size_t type; int /*<<< orphan*/  group_address; } ;
struct mrp_applicant {int /*<<< orphan*/  periodic_timer; int /*<<< orphan*/  join_timer; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  mad; struct mrp_application* app; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * applicants; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mrp_applicant*) ; 
 struct mrp_applicant* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  mrp_join_timer ; 
 int /*<<< orphan*/  FUNC5 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  mrp_periodic_timer ; 
 int /*<<< orphan*/  FUNC6 (struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mrp_applicant*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct net_device *dev, struct mrp_application *appl)
{
	struct mrp_applicant *app;
	int err;

	FUNC0();

	if (!FUNC9(dev->mrp_port)) {
		err = FUNC4(dev);
		if (err < 0)
			goto err1;
	}

	err = -ENOMEM;
	app = FUNC3(sizeof(*app), GFP_KERNEL);
	if (!app)
		goto err2;

	err = FUNC1(dev, appl->group_address);
	if (err < 0)
		goto err3;

	app->dev = dev;
	app->app = appl;
	app->mad = RB_ROOT;
	FUNC11(&app->lock);
	FUNC10(&app->queue);
	FUNC8(dev->mrp_port->applicants[appl->type], app);
	FUNC12(&app->join_timer, mrp_join_timer, 0);
	FUNC5(app);
	FUNC12(&app->periodic_timer, mrp_periodic_timer, 0);
	FUNC6(app);
	return 0;

err3:
	FUNC2(app);
err2:
	FUNC7(dev);
err1:
	return err;
}