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
struct uniperif {void* valid_sel; void* clk_sel; int /*<<< orphan*/  id; } ;
struct regmap {int dummy; } ;
struct reg_field {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct reg_field FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_CFG_AUDIO_GLUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 void* FUNC4 (struct regmap*,struct reg_field) ; 
 struct regmap* FUNC5 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
					  struct uniperif *player)
{
	struct device_node *node = pdev->dev.of_node;
	struct regmap *regmap;
	struct reg_field regfield[2] = {
		/* PCM_CLK_SEL */
		FUNC2(SYS_CFG_AUDIO_GLUE,
			  8 + player->id,
			  8 + player->id),
		/* PCMP_VALID_SEL */
		FUNC2(SYS_CFG_AUDIO_GLUE, 0, 1)
	};

	regmap = FUNC5(node, "st,syscfg");

	if (FUNC0(regmap)) {
		FUNC3(&pdev->dev, "sti-audio-clk-glue syscf not found\n");
		return FUNC1(regmap);
	}

	player->clk_sel = FUNC4(regmap, regfield[0]);
	player->valid_sel = FUNC4(regmap, regfield[1]);

	return 0;
}