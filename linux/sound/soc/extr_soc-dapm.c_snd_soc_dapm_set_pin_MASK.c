#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_dapm_widget {int connected; scalar_t__ force; } ;
struct snd_soc_dapm_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_context*) ; 
 struct snd_soc_dapm_widget* FUNC1 (struct snd_soc_dapm_context*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_widget*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_context *dapm,
				const char *pin, int status)
{
	struct snd_soc_dapm_widget *w = FUNC1(dapm, pin, true);

	FUNC0(dapm);

	if (!w) {
		FUNC5(dapm->dev, "ASoC: DAPM unknown pin %s\n", pin);
		return -EINVAL;
	}

	if (w->connected != status) {
		FUNC2(w, "pin configuration");
		FUNC3(w);
		FUNC4(w);
	}

	w->connected = status;
	if (status == 0)
		w->force = 0;

	return 0;
}