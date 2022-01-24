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
struct snd_soc_dai {int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
struct lpass_data {int /*<<< orphan*/ * mi2s_osr_clk; } ;
struct TYPE_2__ {size_t id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct lpass_data* FUNC2 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai, int clk_id,
		unsigned int freq, int dir)
{
	struct lpass_data *drvdata = FUNC2(dai);
	int ret;

	ret = FUNC0(drvdata->mi2s_osr_clk[dai->driver->id], freq);
	if (ret)
		FUNC1(dai->dev, "error setting mi2s osrclk to %u: %d\n",
			freq, ret);

	return ret;
}