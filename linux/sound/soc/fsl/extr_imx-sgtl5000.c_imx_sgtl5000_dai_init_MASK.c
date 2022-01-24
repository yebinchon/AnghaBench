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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  codec_dai; TYPE_1__* card; } ;
struct imx_sgtl5000_data {int /*<<< orphan*/  clk_frequency; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGTL5000_SYSCLK ; 
 int /*<<< orphan*/  SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct imx_sgtl5000_data* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *rtd)
{
	struct imx_sgtl5000_data *data = FUNC1(rtd->card);
	struct device *dev = rtd->card->dev;
	int ret;

	ret = FUNC2(rtd->codec_dai, SGTL5000_SYSCLK,
				     data->clk_frequency, SND_SOC_CLOCK_IN);
	if (ret) {
		FUNC0(dev, "could not set codec driver clock params\n");
		return ret;
	}

	return 0;
}