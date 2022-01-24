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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; TYPE_1__* cpu_dai; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_dapm_context*,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_pcm_runtime *rtd)
{
	int ret;
	struct snd_soc_dapm_context *dapm;
	struct snd_soc_component *component = rtd->cpu_dai->component;

	dapm = FUNC1(component);
	ret = FUNC2(dapm, "Reference Capture");
	if (ret) {
		FUNC0(rtd->dev, "Ref Cap ignore suspend failed %d\n", ret);
		return ret;
	}

	return ret;
}