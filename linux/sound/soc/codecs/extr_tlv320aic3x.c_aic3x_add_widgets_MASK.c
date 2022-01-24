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
struct aic3x_priv {int model; } ;

/* Variables and functions */
#define  AIC3X_MODEL_3007 131 
#define  AIC3X_MODEL_3104 130 
#define  AIC3X_MODEL_33 129 
#define  AIC3X_MODEL_3X 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aic3007_dapm_widgets ; 
 int /*<<< orphan*/  aic3104_extra_dapm_widgets ; 
 int /*<<< orphan*/  aic3x_dapm_mono_widgets ; 
 int /*<<< orphan*/  aic3x_extra_dapm_widgets ; 
 int /*<<< orphan*/  intercon_3007 ; 
 int /*<<< orphan*/  intercon_extra ; 
 int /*<<< orphan*/  intercon_extra_3104 ; 
 int /*<<< orphan*/  intercon_mono ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct aic3x_priv* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct aic3x_priv *aic3x = FUNC2(component);
	struct snd_soc_dapm_context *dapm = FUNC1(component);

	switch (aic3x->model) {
	case AIC3X_MODEL_3X:
	case AIC3X_MODEL_33:
		FUNC4(dapm, aic3x_extra_dapm_widgets,
					  FUNC0(aic3x_extra_dapm_widgets));
		FUNC3(dapm, intercon_extra,
					FUNC0(intercon_extra));
		FUNC4(dapm, aic3x_dapm_mono_widgets,
			FUNC0(aic3x_dapm_mono_widgets));
		FUNC3(dapm, intercon_mono,
					FUNC0(intercon_mono));
		break;
	case AIC3X_MODEL_3007:
		FUNC4(dapm, aic3x_extra_dapm_widgets,
					  FUNC0(aic3x_extra_dapm_widgets));
		FUNC3(dapm, intercon_extra,
					FUNC0(intercon_extra));
		FUNC4(dapm, aic3007_dapm_widgets,
			FUNC0(aic3007_dapm_widgets));
		FUNC3(dapm, intercon_3007,
					FUNC0(intercon_3007));
		break;
	case AIC3X_MODEL_3104:
		FUNC4(dapm, aic3104_extra_dapm_widgets,
				FUNC0(aic3104_extra_dapm_widgets));
		FUNC3(dapm, intercon_extra_3104,
				FUNC0(intercon_extra_3104));
		break;
	}

	return 0;
}