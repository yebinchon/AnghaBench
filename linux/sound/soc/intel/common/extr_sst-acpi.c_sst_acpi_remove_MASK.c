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
struct sst_pdata {int /*<<< orphan*/  fw; } ;
struct sst_acpi_priv {int /*<<< orphan*/  pdev_pcm; int /*<<< orphan*/  pdev_mach; struct sst_pdata sst_pdata; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sst_acpi_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct sst_acpi_priv *sst_acpi = FUNC2(pdev);
	struct sst_pdata *sst_pdata = &sst_acpi->sst_pdata;

	FUNC1(sst_acpi->pdev_mach);
	if (!FUNC0(sst_acpi->pdev_pcm))
		FUNC1(sst_acpi->pdev_pcm);
	FUNC3(sst_pdata->fw);

	return 0;
}