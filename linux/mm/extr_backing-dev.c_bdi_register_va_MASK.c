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
typedef  int /*<<< orphan*/  va_list ;
struct rb_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct backing_dev_info {int /*<<< orphan*/  bdi_list; int /*<<< orphan*/  rb_node; scalar_t__ id; TYPE_1__ wb; struct device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  WB_registered ; 
 int /*<<< orphan*/  bdi_class ; 
 int /*<<< orphan*/  FUNC3 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ bdi_id_cursor ; 
 int /*<<< orphan*/  bdi_list ; 
 int /*<<< orphan*/  bdi_lock ; 
 struct rb_node** FUNC4 (scalar_t__,struct rb_node**) ; 
 int /*<<< orphan*/  bdi_tree ; 
 int /*<<< orphan*/  FUNC5 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct backing_dev_info*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct backing_dev_info*) ; 

int FUNC15(struct backing_dev_info *bdi, const char *fmt, va_list args)
{
	struct device *dev;
	struct rb_node *parent, **p;

	if (bdi->dev)	/* The driver needs to use separate queues per device */
		return 0;

	dev = FUNC7(bdi_class, NULL, FUNC1(0, 0), bdi, fmt, args);
	if (FUNC0(dev))
		return FUNC2(dev);

	FUNC5(bdi);
	bdi->dev = dev;

	FUNC3(bdi, FUNC6(dev));
	FUNC11(WB_registered, &bdi->wb.state);

	FUNC12(&bdi_lock);

	bdi->id = ++bdi_id_cursor;

	p = FUNC4(bdi->id, &parent);
	FUNC10(&bdi->rb_node, parent, p);
	FUNC9(&bdi->rb_node, &bdi_tree);

	FUNC8(&bdi->bdi_list, &bdi_list);

	FUNC13(&bdi_lock);

	FUNC14(bdi);
	return 0;
}