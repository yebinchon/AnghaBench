#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wm8770_priv {int /*<<< orphan*/  regmap; TYPE_1__* disable_nb; TYPE_2__* supplies; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  consumer; int /*<<< orphan*/  supply; } ;
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct wm8770_priv* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  soc_component_dev_wm8770 ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct wm8770_priv*) ; 
 int /*<<< orphan*/  wm8770_dai ; 
 int /*<<< orphan*/  wm8770_regmap ; 
 int /*<<< orphan*/  wm8770_regulator_event_0 ; 
 int /*<<< orphan*/  wm8770_regulator_event_1 ; 
 int /*<<< orphan*/  wm8770_regulator_event_2 ; 
 int /*<<< orphan*/ * wm8770_supply_names ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct wm8770_priv *wm8770;
	int ret, i;

	wm8770 = FUNC4(&spi->dev, sizeof(struct wm8770_priv),
			      GFP_KERNEL);
	if (!wm8770)
		return -ENOMEM;

	for (i = 0; i < FUNC0(wm8770->supplies); i++)
		wm8770->supplies[i].supply = wm8770_supply_names[i];

	ret = FUNC6(&spi->dev, FUNC0(wm8770->supplies),
				      wm8770->supplies);
	if (ret) {
		FUNC3(&spi->dev, "Failed to request supplies: %d\n", ret);
		return ret;
	}

	wm8770->disable_nb[0].notifier_call = wm8770_regulator_event_0;
	wm8770->disable_nb[1].notifier_call = wm8770_regulator_event_1;
	wm8770->disable_nb[2].notifier_call = wm8770_regulator_event_2;

	/* This should really be moved into the regulator core */
	for (i = 0; i < FUNC0(wm8770->supplies); i++) {
		ret = FUNC7(
						wm8770->supplies[i].consumer,
						&wm8770->disable_nb[i]);
		if (ret) {
			FUNC3(&spi->dev,
				"Failed to register regulator notifier: %d\n",
				ret);
		}
	}

	wm8770->regmap = FUNC5(spi, &wm8770_regmap);
	if (FUNC1(wm8770->regmap))
		return FUNC2(wm8770->regmap);

	FUNC9(spi, wm8770);

	ret = FUNC8(&spi->dev,
				     &soc_component_dev_wm8770, &wm8770_dai, 1);

	return ret;
}