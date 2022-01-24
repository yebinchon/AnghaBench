#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tfa9879_priv {int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  def; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct tfa9879_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct tfa9879_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tfa9879_component ; 
 int /*<<< orphan*/  tfa9879_dai ; 
 int /*<<< orphan*/  tfa9879_regmap ; 
 TYPE_1__* tfa9879_regs ; 

__attribute__((used)) static int FUNC8(struct i2c_client *i2c)
{
	struct tfa9879_priv *tfa9879;
	int i;

	tfa9879 = FUNC3(&i2c->dev, sizeof(*tfa9879), GFP_KERNEL);
	if (!tfa9879)
		return -ENOMEM;

	FUNC6(i2c, tfa9879);

	tfa9879->regmap = FUNC4(i2c, &tfa9879_regmap);
	if (FUNC1(tfa9879->regmap))
		return FUNC2(tfa9879->regmap);

	/* Ensure the device is in reset state */
	for (i = 0; i < FUNC0(tfa9879_regs); i++)
		FUNC7(tfa9879->regmap,
			     tfa9879_regs[i].reg, tfa9879_regs[i].def);

	return FUNC5(&i2c->dev, &tfa9879_component,
					       &tfa9879_dai, 1);
}