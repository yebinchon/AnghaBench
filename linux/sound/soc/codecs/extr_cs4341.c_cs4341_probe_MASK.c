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
struct device {int dummy; } ;
struct cs4341_priv {int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  def; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  cs4341_dai ; 
 TYPE_1__* cs4341_reg_defaults ; 
 struct cs4341_priv* FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  soc_component_cs4341 ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct cs4341_priv *cs4341 = FUNC1(dev);
	int i;

	for (i = 0; i < FUNC0(cs4341_reg_defaults); i++)
		FUNC3(cs4341->regmap, cs4341_reg_defaults[i].reg,
			     cs4341_reg_defaults[i].def);

	return FUNC2(dev, &soc_component_cs4341,
					       &cs4341_dai, 1);
}