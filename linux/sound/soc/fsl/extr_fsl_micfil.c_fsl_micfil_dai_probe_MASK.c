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
struct snd_soc_dai {struct device* dev; } ;
struct fsl_micfil {int* channel_gain; int /*<<< orphan*/  regmap; TYPE_1__* soc; int /*<<< orphan*/  dma_params_rx; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fifo_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICFIL_CTRL2_QSEL_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MICFIL_FIFO_CTRL_FIFOWMK_MASK ; 
 unsigned int MICFIL_MEDIUM_QUALITY ; 
 int /*<<< orphan*/  REG_MICFIL_CTRL2 ; 
 int /*<<< orphan*/  REG_MICFIL_FIFO_CTRL ; 
 int /*<<< orphan*/  REG_MICFIL_OUT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct fsl_micfil* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dai*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dai*,struct fsl_micfil*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *cpu_dai)
{
	struct fsl_micfil *micfil = FUNC2(cpu_dai->dev);
	struct device *dev = cpu_dai->dev;
	unsigned int val;
	int ret;
	int i;

	/* set qsel to medium */
	ret = FUNC3(micfil->regmap, REG_MICFIL_CTRL2,
				 MICFIL_CTRL2_QSEL_MASK, MICFIL_MEDIUM_QUALITY);
	if (ret) {
		FUNC1(dev, "failed to set quality mode bits, reg 0x%X\n",
			REG_MICFIL_CTRL2);
		return ret;
	}

	/* set default gain to max_gain */
	FUNC4(micfil->regmap, REG_MICFIL_OUT_CTRL, 0x77777777);
	for (i = 0; i < 8; i++)
		micfil->channel_gain[i] = 0xF;

	FUNC5(cpu_dai, NULL,
				  &micfil->dma_params_rx);

	/* FIFO Watermark Control - FIFOWMK*/
	val = FUNC0(micfil->soc->fifo_depth) - 1;
	ret = FUNC3(micfil->regmap, REG_MICFIL_FIFO_CTRL,
				 MICFIL_FIFO_CTRL_FIFOWMK_MASK,
				 val);
	if (ret) {
		FUNC1(dev, "failed to set FIFOWMK\n");
		return ret;
	}

	FUNC6(cpu_dai, micfil);

	return 0;
}