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
struct tas5720_data {int /*<<< orphan*/  fault_check_work; scalar_t__ last_fault; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int SND_SOC_DAPM_POST_PMU ; 
 int SND_SOC_DAPM_PRE_PMD ; 
 int /*<<< orphan*/  TAS5720_FAULT_CHECK_INTERVAL ; 
 int /*<<< orphan*/  TAS5720_POWER_CTRL_REG ; 
 int /*<<< orphan*/  TAS5720_SDZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tas5720_data* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
			     struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC7(w->dapm);
	struct tas5720_data *tas5720 = FUNC5(component);
	int ret;

	if (event & SND_SOC_DAPM_POST_PMU) {
		/* Take TAS5720 out of shutdown mode */
		ret = FUNC6(component, TAS5720_POWER_CTRL_REG,
					  TAS5720_SDZ, TAS5720_SDZ);
		if (ret < 0) {
			FUNC1(component->dev, "error waking component: %d\n", ret);
			return ret;
		}

		/*
		 * Observe codec shutdown-to-active time. The datasheet only
		 * lists a nominal value however just use-it as-is without
		 * additional padding to minimize the delay introduced in
		 * starting to play audio (actually there is other setup done
		 * by the ASoC framework that will provide additional delays,
		 * so we should always be safe).
		 */
		FUNC3(25);

		/* Turn on TAS5720 periodic fault checking/handling */
		tas5720->last_fault = 0;
		FUNC4(&tas5720->fault_check_work,
				FUNC2(TAS5720_FAULT_CHECK_INTERVAL));
	} else if (event & SND_SOC_DAPM_PRE_PMD) {
		/* Disable TAS5720 periodic fault checking/handling */
		FUNC0(&tas5720->fault_check_work);

		/* Place TAS5720 in shutdown mode to minimize current draw */
		ret = FUNC6(component, TAS5720_POWER_CTRL_REG,
					  TAS5720_SDZ, 0);
		if (ret < 0) {
			FUNC1(component->dev, "error shutting down component: %d\n",
				ret);
			return ret;
		}
	}

	return 0;
}