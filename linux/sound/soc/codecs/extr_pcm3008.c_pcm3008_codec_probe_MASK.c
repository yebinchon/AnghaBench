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
struct TYPE_3__ {struct pcm3008_setup_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcm3008_setup_data {int /*<<< orphan*/  pdda_pin; int /*<<< orphan*/  pdad_pin; int /*<<< orphan*/  dem1_pin; int /*<<< orphan*/  dem0_pin; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pcm3008_dai ; 
 int /*<<< orphan*/  soc_component_dev_pcm3008 ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct pcm3008_setup_data *setup = pdev->dev.platform_data;
	int ret;

	if (!setup)
		return -EINVAL;

	/* DEM1  DEM0  DE-EMPHASIS_MODE
	 * Low   Low   De-emphasis 44.1 kHz ON
	 * Low   High  De-emphasis OFF
	 * High  Low   De-emphasis 48 kHz ON
	 * High  High  De-emphasis 32 kHz ON
	 */

	/* Configure DEM0 GPIO (turning OFF DAC De-emphasis). */
	ret = FUNC0(&pdev->dev, setup->dem0_pin,
				    GPIOF_OUT_INIT_HIGH, "codec_dem0");
	if (ret != 0)
		return ret;

	/* Configure DEM1 GPIO (turning OFF DAC De-emphasis). */
	ret = FUNC0(&pdev->dev, setup->dem1_pin,
				    GPIOF_OUT_INIT_LOW, "codec_dem1");
	if (ret != 0)
		return ret;

	/* Configure PDAD GPIO. */
	ret = FUNC0(&pdev->dev, setup->pdad_pin,
				    GPIOF_OUT_INIT_LOW, "codec_pdad");
	if (ret != 0)
		return ret;

	/* Configure PDDA GPIO. */
	ret = FUNC0(&pdev->dev, setup->pdda_pin,
				    GPIOF_OUT_INIT_LOW, "codec_pdda");
	if (ret != 0)
		return ret;

	return FUNC1(&pdev->dev,
			&soc_component_dev_pcm3008, &pcm3008_dai, 1);
}