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
struct alc5623_priv {int id; scalar_t__ jack_det_ctrl; scalar_t__ add_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC5623_ADD_CTRL_REG ; 
 int /*<<< orphan*/  ALC5623_JACK_DET_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  alc5621_vol_snd_controls ; 
 int /*<<< orphan*/  alc5622_vol_snd_controls ; 
 int /*<<< orphan*/  alc5623_dapm_amp_widgets ; 
 int /*<<< orphan*/  alc5623_dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  alc5623_snd_controls ; 
 int /*<<< orphan*/  alc5623_vol_snd_controls ; 
 int /*<<< orphan*/  intercon ; 
 int /*<<< orphan*/  intercon_amp_spk ; 
 int /*<<< orphan*/  intercon_spk ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct alc5623_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *component)
{
	struct alc5623_priv *alc5623 = FUNC4(component);
	struct snd_soc_dapm_context *dapm = FUNC3(component);

	FUNC1(component);

	if (alc5623->add_ctrl) {
		FUNC5(component, ALC5623_ADD_CTRL_REG,
				alc5623->add_ctrl);
	}

	if (alc5623->jack_det_ctrl) {
		FUNC5(component, ALC5623_JACK_DET_CTRL,
				alc5623->jack_det_ctrl);
	}

	switch (alc5623->id) {
	case 0x21:
		FUNC2(component, alc5621_vol_snd_controls,
			FUNC0(alc5621_vol_snd_controls));
		break;
	case 0x22:
		FUNC2(component, alc5622_vol_snd_controls,
			FUNC0(alc5622_vol_snd_controls));
		break;
	case 0x23:
		FUNC2(component, alc5623_vol_snd_controls,
			FUNC0(alc5623_vol_snd_controls));
		break;
	default:
		return -EINVAL;
	}

	FUNC2(component, alc5623_snd_controls,
			FUNC0(alc5623_snd_controls));

	FUNC7(dapm, alc5623_dapm_widgets,
					FUNC0(alc5623_dapm_widgets));

	/* set up audio path interconnects */
	FUNC6(dapm, intercon, FUNC0(intercon));

	switch (alc5623->id) {
	case 0x21:
	case 0x22:
		FUNC7(dapm, alc5623_dapm_amp_widgets,
					FUNC0(alc5623_dapm_amp_widgets));
		FUNC6(dapm, intercon_amp_spk,
					FUNC0(intercon_amp_spk));
		break;
	case 0x23:
		FUNC6(dapm, intercon_spk,
					FUNC0(intercon_spk));
		break;
	default:
		return -EINVAL;
	}

	return 0;
}