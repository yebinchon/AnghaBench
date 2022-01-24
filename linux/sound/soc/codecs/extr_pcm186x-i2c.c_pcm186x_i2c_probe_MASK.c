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
struct regmap {int dummy; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int irq; int /*<<< orphan*/  dev; } ;
typedef  enum pcm186x_type { ____Placeholder_pcm186x_type } pcm186x_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int const,int,struct regmap*) ; 
 int /*<<< orphan*/  pcm186x_regmap ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	const enum pcm186x_type type = (enum pcm186x_type)id->driver_data;
	int irq = i2c->irq;
	struct regmap *regmap;

	regmap = FUNC2(i2c, &pcm186x_regmap);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC3(&i2c->dev, type, irq, regmap);
}