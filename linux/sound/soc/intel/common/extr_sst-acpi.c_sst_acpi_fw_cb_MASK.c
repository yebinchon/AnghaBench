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
struct sst_pdata {struct firmware const* fw; } ;
struct sst_acpi_priv {int /*<<< orphan*/  pdev_pcm; struct snd_soc_acpi_mach* mach; struct sst_acpi_desc* desc; struct sst_pdata sst_pdata; } ;
struct sst_acpi_desc {int /*<<< orphan*/  drv_name; } ;
struct snd_soc_acpi_mach {int /*<<< orphan*/  fw_filename; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int,struct sst_pdata*,int) ; 
 struct sst_acpi_priv* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static void FUNC5(const struct firmware *fw, void *context)
{
	struct platform_device *pdev = context;
	struct device *dev = &pdev->dev;
	struct sst_acpi_priv *sst_acpi = FUNC4(pdev);
	struct sst_pdata *sst_pdata = &sst_acpi->sst_pdata;
	struct sst_acpi_desc *desc = sst_acpi->desc;
	struct snd_soc_acpi_mach *mach = sst_acpi->mach;

	sst_pdata->fw = fw;
	if (!fw) {
		FUNC2(dev, "Cannot load firmware %s\n", mach->fw_filename);
		return;
	}

	/* register PCM and DAI driver */
	sst_acpi->pdev_pcm =
		FUNC3(dev, desc->drv_name, -1,
					      sst_pdata, sizeof(*sst_pdata));
	if (FUNC0(sst_acpi->pdev_pcm)) {
		FUNC2(dev, "Cannot register device %s. Error %d\n",
			desc->drv_name, (int)FUNC1(sst_acpi->pdev_pcm));
	}

	return;
}