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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {struct da7219_aad_priv* aad; } ;
struct da7219_aad_priv {int micbias_resume_enable; scalar_t__ jack_inserted; scalar_t__ jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7219_ACCDET_CONFIG_1 ; 
 int /*<<< orphan*/  DA7219_ACCDET_EN_MASK ; 
 struct snd_soc_dapm_context* FUNC0 (struct snd_soc_component*) ; 
 struct da7219_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 

void FUNC5(struct snd_soc_component *component)
{
	struct da7219_priv *da7219 = FUNC1(component);
	struct da7219_aad_priv *da7219_aad = da7219->aad;
	struct snd_soc_dapm_context *dapm = FUNC0(component);

	if (da7219_aad->jack) {
		/* Re-enable micbias if previously enabled for 4-pole jack */
		if (da7219_aad->jack_inserted &&
		    da7219_aad->micbias_resume_enable) {
			FUNC3(dapm, "Mic Bias");
			FUNC4(dapm);
			da7219_aad->micbias_resume_enable = false;
		}

		/* Re-enable jack detection */
		FUNC2(component, DA7219_ACCDET_CONFIG_1,
				    DA7219_ACCDET_EN_MASK,
				    DA7219_ACCDET_EN_MASK);
	}
}