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
struct uniphier_aio_sub {int /*<<< orphan*/  lock; struct uniphier_aio* aio; } ;
struct uniphier_aio_pll {int dummy; } ;
struct uniphier_aio_chip {int num_aios; int num_wup_aios; int num_plls; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * rst; TYPE_1__* chip_spec; struct platform_device* pdev; struct uniphier_aio* aios; void* plls; int /*<<< orphan*/ * regmap_sg; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; int /*<<< orphan*/  fmt; struct uniphier_aio_chip* chip; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int num_dais; int num_plls; int /*<<< orphan*/  dais; int /*<<< orphan*/  plls; } ;

/* Variables and functions */
 int FUNC0 (struct uniphier_aio_sub*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SND_SOC_DAIFMT_I2S ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,char*) ; 
 void* FUNC7 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct uniphier_aio_chip* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,char*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct uniphier_aio_chip*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uniphier_aio_component ; 
 int FUNC18 (struct platform_device*) ; 

int FUNC19(struct platform_device *pdev)
{
	struct uniphier_aio_chip *chip;
	struct device *dev = &pdev->dev;
	int ret, i, j;

	chip = FUNC8(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->chip_spec = FUNC12(dev);
	if (!chip->chip_spec)
		return -EINVAL;

	chip->regmap_sg = FUNC17(dev->of_node,
							  "socionext,syscon");
	if (FUNC1(chip->regmap_sg)) {
		if (FUNC2(chip->regmap_sg) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		chip->regmap_sg = NULL;
	}

	chip->clk = FUNC6(dev, "aio");
	if (FUNC1(chip->clk))
		return FUNC2(chip->clk);

	chip->rst = FUNC9(dev, "aio");
	if (FUNC1(chip->rst))
		return FUNC2(chip->rst);

	chip->num_aios = chip->chip_spec->num_dais;
	chip->num_wup_aios = chip->num_aios;
	chip->aios = FUNC7(dev,
				  chip->num_aios, sizeof(struct uniphier_aio),
				  GFP_KERNEL);
	if (!chip->aios)
		return -ENOMEM;

	chip->num_plls = chip->chip_spec->num_plls;
	chip->plls = FUNC7(dev,
				  chip->num_plls,
				  sizeof(struct uniphier_aio_pll),
				  GFP_KERNEL);
	if (!chip->plls)
		return -ENOMEM;
	FUNC11(chip->plls, chip->chip_spec->plls,
	       sizeof(struct uniphier_aio_pll) * chip->num_plls);

	for (i = 0; i < chip->num_aios; i++) {
		struct uniphier_aio *aio = &chip->aios[i];

		aio->chip = chip;
		aio->fmt = SND_SOC_DAIFMT_I2S;

		for (j = 0; j < FUNC0(aio->sub); j++) {
			struct uniphier_aio_sub *sub = &aio->sub[j];

			sub->aio = aio;
			FUNC16(&sub->lock);
		}
	}

	chip->pdev = pdev;
	FUNC13(pdev, chip);

	ret = FUNC4(chip->clk);
	if (ret)
		return ret;

	ret = FUNC15(chip->rst);
	if (ret)
		goto err_out_clock;

	ret = FUNC10(dev, &uniphier_aio_component,
					      chip->chip_spec->dais,
					      chip->chip_spec->num_dais);
	if (ret) {
		FUNC5(dev, "Register component failed.\n");
		goto err_out_reset;
	}

	ret = FUNC18(pdev);
	if (ret) {
		FUNC5(dev, "Register platform failed.\n");
		goto err_out_reset;
	}

	return 0;

err_out_reset:
	FUNC14(chip->rst);

err_out_clock:
	FUNC3(chip->clk);

	return ret;
}