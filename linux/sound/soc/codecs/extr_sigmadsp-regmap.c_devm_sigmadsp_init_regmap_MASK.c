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
struct sigmadsp {int /*<<< orphan*/  read; int /*<<< orphan*/  write; struct regmap* control_data; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sigmadsp*) ; 
 struct sigmadsp* FUNC1 (struct device*,struct sigmadsp_ops const*,char const*) ; 
 int /*<<< orphan*/  sigmadsp_read_regmap ; 
 int /*<<< orphan*/  sigmadsp_write_regmap ; 

struct sigmadsp *FUNC2(struct device *dev,
	struct regmap *regmap, const struct sigmadsp_ops *ops,
	const char *firmware_name)
{
	struct sigmadsp *sigmadsp;

	sigmadsp = FUNC1(dev, ops, firmware_name);
	if (FUNC0(sigmadsp))
		return sigmadsp;

	sigmadsp->control_data = regmap;
	sigmadsp->write = sigmadsp_write_regmap;
	sigmadsp->read = sigmadsp_read_regmap;

	return sigmadsp;
}