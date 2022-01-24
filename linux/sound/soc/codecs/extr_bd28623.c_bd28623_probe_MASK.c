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
struct platform_device {struct device dev; } ;
struct bd28623_priv {struct device* dev; void* mute_gpio; void* reset_gpio; TYPE_1__* supplies; } ;
struct TYPE_3__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/ * bd28623_supply_names ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct bd28623_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,TYPE_1__*) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct bd28623_priv*) ; 
 int /*<<< orphan*/  soc_codec_bd ; 
 int /*<<< orphan*/  soc_dai_bd ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct bd28623_priv *bd;
	struct device *dev = &pdev->dev;
	int i, ret;

	bd = FUNC5(&pdev->dev, sizeof(struct bd28623_priv), GFP_KERNEL);
	if (!bd)
		return -ENOMEM;

	for (i = 0; i < FUNC0(bd->supplies); i++)
		bd->supplies[i].supply = bd28623_supply_names[i];

	ret = FUNC6(dev, FUNC0(bd->supplies),
				      bd->supplies);
	if (ret) {
		FUNC3(dev, "Failed to get supplies: %d\n", ret);
		return ret;
	}

	bd->reset_gpio = FUNC4(dev, "reset",
						 GPIOD_OUT_HIGH);
	if (FUNC1(bd->reset_gpio)) {
		FUNC3(dev, "Failed to request reset_gpio: %ld\n",
			FUNC2(bd->reset_gpio));
		return FUNC2(bd->reset_gpio);
	}

	bd->mute_gpio = FUNC4(dev, "mute",
						GPIOD_OUT_HIGH);
	if (FUNC1(bd->mute_gpio)) {
		FUNC3(dev, "Failed to request mute_gpio: %ld\n",
			FUNC2(bd->mute_gpio));
		return FUNC2(bd->mute_gpio);
	}

	FUNC8(pdev, bd);
	bd->dev = dev;

	return FUNC7(dev, &soc_codec_bd,
					       &soc_dai_bd, 1);
}