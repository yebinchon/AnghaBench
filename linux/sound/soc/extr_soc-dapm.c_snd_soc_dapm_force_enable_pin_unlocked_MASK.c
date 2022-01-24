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
struct snd_soc_dapm_widget {int connected; int force; TYPE_1__* dapm; } ;
struct snd_soc_dapm_context {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 struct snd_soc_dapm_widget* FUNC0 (struct snd_soc_dapm_context*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_widget*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 

int FUNC6(struct snd_soc_dapm_context *dapm,
					 const char *pin)
{
	struct snd_soc_dapm_widget *w = FUNC0(dapm, pin, true);

	if (!w) {
		FUNC5(dapm->dev, "ASoC: unknown pin %s\n", pin);
		return -EINVAL;
	}

	FUNC4(w->dapm->dev, "ASoC: force enable pin %s\n", pin);
	if (!w->connected) {
		/*
		 * w->force does not affect the number of input or output paths,
		 * so we only have to recheck if w->connected is changed
		 */
		FUNC2(w);
		FUNC3(w);
		w->connected = 1;
	}
	w->force = 1;
	FUNC1(w, "force enable");

	return 0;
}