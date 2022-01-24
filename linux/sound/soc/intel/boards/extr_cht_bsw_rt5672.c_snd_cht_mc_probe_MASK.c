#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {char* platform; } ;
struct snd_soc_acpi_mach {TYPE_2__ mach_params; int /*<<< orphan*/  id; } ;
struct TYPE_18__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_7__ dev; } ;
struct cht_mc_private {int /*<<< orphan*/  mclk; int /*<<< orphan*/  codec_name; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_17__ {TYPE_7__* dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {TYPE_1__* codecs; } ;

/* Variables and functions */
 int FUNC0 (TYPE_12__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT5672_I2C_DEFAULT ; 
 struct acpi_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (struct acpi_device*) ; 
 TYPE_12__* cht_dailink ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,char*) ; 
 struct cht_mc_private* FUNC7 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_7__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__ snd_soc_card_cht ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct cht_mc_private*) ; 
 int FUNC12 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int ret_val = 0;
	struct cht_mc_private *drv;
	struct snd_soc_acpi_mach *mach = pdev->dev.platform_data;
	const char *platform_name;
	struct acpi_device *adev;
	int i;

	drv = FUNC7(&pdev->dev, sizeof(*drv), GFP_KERNEL);
	if (!drv)
		return -ENOMEM;

	FUNC15(drv->codec_name, RT5672_I2C_DEFAULT);

	/* fixup codec name based on HID */
	adev = FUNC3(mach->id, NULL, -1);
	if (adev) {
		FUNC13(drv->codec_name, sizeof(drv->codec_name),
			 "i2c-%s", FUNC4(adev));
		FUNC10(&adev->dev);
		for (i = 0; i < FUNC0(cht_dailink); i++) {
			if (!FUNC14(cht_dailink[i].codecs->name,
				    RT5672_I2C_DEFAULT)) {
				cht_dailink[i].codecs->name = drv->codec_name;
				break;
			}
		}
	}

	/* override plaform name, if required */
	snd_soc_card_cht.dev = &pdev->dev;
	platform_name = mach->mach_params.platform;

	ret_val = FUNC12(&snd_soc_card_cht,
							platform_name);
	if (ret_val)
		return ret_val;

	drv->mclk = FUNC6(&pdev->dev, "pmc_plt_clk_3");
	if (FUNC1(drv->mclk)) {
		FUNC5(&pdev->dev,
			"Failed to get MCLK from pmc_plt_clk_3: %ld\n",
			FUNC2(drv->mclk));
		return FUNC2(drv->mclk);
	}
	FUNC11(&snd_soc_card_cht, drv);

	/* register the soc card */
	ret_val = FUNC8(&pdev->dev, &snd_soc_card_cht);
	if (ret_val) {
		FUNC5(&pdev->dev,
			"snd_soc_register_card failed %d\n", ret_val);
		return ret_val;
	}
	FUNC9(pdev, &snd_soc_card_cht);
	return ret_val;
}