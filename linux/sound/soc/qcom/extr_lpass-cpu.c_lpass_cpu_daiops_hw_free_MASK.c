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
struct snd_pcm_substream {int dummy; } ;
struct lpass_data {int /*<<< orphan*/  variant; int /*<<< orphan*/  lpaif_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lpass_data* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
		struct snd_soc_dai *dai)
{
	struct lpass_data *drvdata = FUNC3(dai);
	int ret;

	ret = FUNC2(drvdata->lpaif_map,
			   FUNC0(drvdata->variant, dai->driver->id),
			   0);
	if (ret)
		FUNC1(dai->dev, "error writing to i2sctl reg: %d\n", ret);

	return ret;
}