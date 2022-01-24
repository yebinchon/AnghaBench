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
struct snd_soc_dapm_route {char* control; int /*<<< orphan*/  sink; int /*<<< orphan*/  source; } ;
struct snd_soc_dapm_context {TYPE_1__* card; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dapm_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_DAPM_CLASS_RUNTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_soc_dapm_context*,struct snd_soc_dapm_route const*) ; 

int FUNC4(struct snd_soc_dapm_context *dapm,
			    const struct snd_soc_dapm_route *route, int num)
{
	int i, r, ret = 0;

	FUNC1(&dapm->card->dapm_mutex, SND_SOC_DAPM_CLASS_RUNTIME);
	for (i = 0; i < num; i++) {
		r = FUNC3(dapm, route);
		if (r < 0) {
			FUNC0(dapm->dev, "ASoC: Failed to add route %s -> %s -> %s\n",
				route->source,
				route->control ? route->control : "direct",
				route->sink);
			ret = r;
		}
		route++;
	}
	FUNC2(&dapm->card->dapm_mutex);

	return ret;
}