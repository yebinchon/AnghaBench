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
struct mtk_base_afe_dai {void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; void* num_dai_drivers; void* dai_drivers; int /*<<< orphan*/  list; } ;
struct mtk_base_afe {int /*<<< orphan*/  sub_dais; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mtk_base_afe_dai* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* mtk_dai_adda_driver ; 
 void* mtk_dai_adda_routes ; 
 void* mtk_dai_adda_widgets ; 

int FUNC3(struct mtk_base_afe *afe)
{
	struct mtk_base_afe_dai *dai;

	dai = FUNC1(afe->dev, sizeof(*dai), GFP_KERNEL);
	if (!dai)
		return -ENOMEM;

	FUNC2(&dai->list, &afe->sub_dais);

	dai->dai_drivers = mtk_dai_adda_driver;
	dai->num_dai_drivers = FUNC0(mtk_dai_adda_driver);

	dai->dapm_widgets = mtk_dai_adda_widgets;
	dai->num_dapm_widgets = FUNC0(mtk_dai_adda_widgets);
	dai->dapm_routes = mtk_dai_adda_routes;
	dai->num_dapm_routes = FUNC0(mtk_dai_adda_routes);
	return 0;
}