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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_soc_pcm_runtime*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *rtd)
{
	int ret;

	ret = FUNC1(rtd);
	if (ret)
		return ret;

	ret = FUNC2(&rtd->card->dapm, "SoC DMIC");
	if (ret) {
		FUNC0(rtd->dev, "SoC DMIC ignore suspend failed %d\n", ret);
		return ret;
	}

	return ret;
}