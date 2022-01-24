#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct device {struct snd_soc_acpi_mach* platform_data; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct dmi_system_id {scalar_t__ driver_data; } ;
struct cht_mc_private {unsigned long quirks; int /*<<< orphan*/  mclk; int /*<<< orphan*/  ts3a227e_present; } ;
struct TYPE_8__ {struct device* dev; scalar_t__ num_aux_devs; int /*<<< orphan*/ * aux_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int QUIRK_PMC_PLT_CLK_0 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  acpi_max98090_gpios ; 
 int /*<<< orphan*/  cht_max98090_quirk_table ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char const*) ; 
 struct cht_mc_private* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,TYPE_2__*) ; 
 struct dmi_system_id* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,TYPE_2__*) ; 
 TYPE_2__ snd_soc_card_cht ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct cht_mc_private*) ; 
 int FUNC13 (TYPE_2__*,char const*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	const struct dmi_system_id *dmi_id;
	struct device *dev = &pdev->dev;
	int ret_val = 0;
	struct cht_mc_private *drv;
	const char *mclk_name;
	struct snd_soc_acpi_mach *mach;
	const char *platform_name;

	drv = FUNC8(&pdev->dev, sizeof(*drv), GFP_KERNEL);
	if (!drv)
		return -ENOMEM;

	dmi_id = FUNC10(cht_max98090_quirk_table);
	if (dmi_id)
		drv->quirks = (unsigned long)dmi_id->driver_data;

	drv->ts3a227e_present = FUNC2("104C227E");
	if (!drv->ts3a227e_present) {
		/* no need probe TI jack detection chip */
		snd_soc_card_cht.aux_dev = NULL;
		snd_soc_card_cht.num_aux_devs = 0;

		ret_val = FUNC6(dev->parent,
							 acpi_max98090_gpios);
		if (ret_val)
			FUNC4(dev, "Unable to add GPIO mapping table\n");
	}

	/* override plaform name, if required */
	snd_soc_card_cht.dev = &pdev->dev;
	mach = (&pdev->dev)->platform_data;
	platform_name = mach->mach_params.platform;

	ret_val = FUNC13(&snd_soc_card_cht,
							platform_name);
	if (ret_val)
		return ret_val;

	/* register the soc card */
	FUNC12(&snd_soc_card_cht, drv);

	if (drv->quirks & QUIRK_PMC_PLT_CLK_0)
		mclk_name = "pmc_plt_clk_0";
	else
		mclk_name = "pmc_plt_clk_3";

	drv->mclk = FUNC7(&pdev->dev, mclk_name);
	if (FUNC0(drv->mclk)) {
		FUNC5(&pdev->dev,
			"Failed to get MCLK from %s: %ld\n",
			mclk_name, FUNC1(drv->mclk));
		return FUNC1(drv->mclk);
	}

	/*
	 * Boards which have the MAX98090's clk connected to clk_0 do not seem
	 * to like it if we muck with the clock. If we disable the clock when
	 * it is unused we get "max98090 i2c-193C9890:00: PLL unlocked" errors
	 * and the PLL never seems to lock again.
	 * So for these boards we enable it here once and leave it at that.
	 */
	if (drv->quirks & QUIRK_PMC_PLT_CLK_0) {
		ret_val = FUNC3(drv->mclk);
		if (ret_val < 0) {
			FUNC5(&pdev->dev, "MCLK enable error: %d\n", ret_val);
			return ret_val;
		}
	}

	ret_val = FUNC9(&pdev->dev, &snd_soc_card_cht);
	if (ret_val) {
		FUNC5(&pdev->dev,
			"snd_soc_register_card failed %d\n", ret_val);
		return ret_val;
	}
	FUNC11(pdev, &snd_soc_card_cht);
	return ret_val;
}