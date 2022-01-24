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
struct snd_soc_dai {int dummy; } ;
struct regmap {int dummy; } ;
struct mtk_base_afe {int suspended; int reg_back_up_list_num; int /*<<< orphan*/  (* runtime_suspend ) (struct device*) ;int /*<<< orphan*/ * reg_back_up; int /*<<< orphan*/ * reg_back_up_list; struct regmap* regmap; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mtk_base_afe* FUNC3 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

int FUNC5(struct snd_soc_dai *dai)
{
	struct mtk_base_afe *afe = FUNC3(dai);
	struct device *dev = afe->dev;
	struct regmap *regmap = afe->regmap;
	int i;

	if (FUNC1(dev) || afe->suspended)
		return 0;

	if (!afe->reg_back_up)
		afe->reg_back_up =
			FUNC0(dev, afe->reg_back_up_list_num,
				     sizeof(unsigned int), GFP_KERNEL);

	for (i = 0; i < afe->reg_back_up_list_num; i++)
		FUNC2(regmap, afe->reg_back_up_list[i],
			    &afe->reg_back_up[i]);

	afe->suspended = true;
	afe->runtime_suspend(dev);
	return 0;
}