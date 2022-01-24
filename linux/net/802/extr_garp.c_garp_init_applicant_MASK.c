#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_2__* garp_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  group_address; } ;
struct garp_application {size_t type; TYPE_1__ proto; } ;
struct garp_applicant {int /*<<< orphan*/  join_timer; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  gid; struct garp_application* app; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * applicants; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  garp_join_timer ; 
 int /*<<< orphan*/  FUNC3 (struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct garp_applicant*) ; 
 struct garp_applicant* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct garp_applicant*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct net_device *dev, struct garp_application *appl)
{
	struct garp_applicant *app;
	int err;

	FUNC0();

	if (!FUNC8(dev->garp_port)) {
		err = FUNC2(dev);
		if (err < 0)
			goto err1;
	}

	err = -ENOMEM;
	app = FUNC6(sizeof(*app), GFP_KERNEL);
	if (!app)
		goto err2;

	err = FUNC1(dev, appl->proto.group_address);
	if (err < 0)
		goto err3;

	app->dev = dev;
	app->app = appl;
	app->gid = RB_ROOT;
	FUNC10(&app->lock);
	FUNC9(&app->queue);
	FUNC7(dev->garp_port->applicants[appl->type], app);
	FUNC11(&app->join_timer, garp_join_timer, 0);
	FUNC3(app);
	return 0;

err3:
	FUNC5(app);
err2:
	FUNC4(dev);
err1:
	return err;
}