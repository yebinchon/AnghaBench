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
struct snd_soc_dai {TYPE_1__* driver; int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct lpass_data {int /*<<< orphan*/ * mi2s_osr_clk; int /*<<< orphan*/ * mi2s_bit_clk; } ;
struct TYPE_2__ {size_t id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct lpass_data* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct lpass_data *drvdata = FUNC3(dai);
	int ret;

	ret = FUNC1(drvdata->mi2s_osr_clk[dai->driver->id]);
	if (ret) {
		FUNC2(dai->dev, "error in enabling mi2s osr clk: %d\n", ret);
		return ret;
	}

	ret = FUNC1(drvdata->mi2s_bit_clk[dai->driver->id]);
	if (ret) {
		FUNC2(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
		FUNC0(drvdata->mi2s_osr_clk[dai->driver->id]);
		return ret;
	}

	return 0;
}