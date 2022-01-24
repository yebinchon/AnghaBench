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
struct sigmadsp_ops {int dummy; } ;
struct sigmadsp {int /*<<< orphan*/  lock; int /*<<< orphan*/  data_list; int /*<<< orphan*/  ctrl_list; struct device* dev; struct sigmadsp_ops const* ops; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sigmadsp*,char const*) ; 

__attribute__((used)) static int FUNC3(struct sigmadsp *sigmadsp, struct device *dev,
	const struct sigmadsp_ops *ops, const char *firmware_name)
{
	sigmadsp->ops = ops;
	sigmadsp->dev = dev;

	FUNC0(&sigmadsp->ctrl_list);
	FUNC0(&sigmadsp->data_list);
	FUNC1(&sigmadsp->lock);

	return FUNC2(sigmadsp, firmware_name);
}