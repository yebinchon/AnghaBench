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
struct snd_soc_dai {int dummy; } ;
struct fsl_micfil {int /*<<< orphan*/  mclk; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct fsl_micfil*,unsigned int) ; 
 struct fsl_micfil* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai, int clk_id,
				     unsigned int freq, int dir)
{
	struct fsl_micfil *micfil = FUNC3(dai);
	struct device *dev = &micfil->pdev->dev;

	int ret;

	if (!freq)
		return 0;

	ret = FUNC2(micfil, freq);
	if (ret < 0)
		FUNC1(dev, "failed to set mclk[%lu] to rate %u\n",
			FUNC0(micfil->mclk), freq);

	return ret;
}