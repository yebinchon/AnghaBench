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
struct sst_pdata {struct sst_hsw* dsp; } ;
struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  SST_HSW_DEVICE_CLOCK_MASTER ; 
 int /*<<< orphan*/  SST_HSW_DEVICE_MCLK_FREQ_24_MHZ ; 
 int /*<<< orphan*/  SST_HSW_DEVICE_SSP_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sst_pdata* FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC2 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sst_hsw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_component *component = FUNC2(rtd, DRV_NAME);
	struct sst_pdata *pdata = FUNC1(component->dev);
	struct sst_hsw *haswell = pdata->dsp;
	int ret;

	/* Set ADSP SSP port settings */
	ret = FUNC3(haswell, SST_HSW_DEVICE_SSP_0,
		SST_HSW_DEVICE_MCLK_FREQ_24_MHZ,
		SST_HSW_DEVICE_CLOCK_MASTER, 9);
	if (ret < 0) {
		FUNC0(rtd->dev, "failed to set device config\n");
		return ret;
	}

	return 0;
}