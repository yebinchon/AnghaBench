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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  atlas6_codec_clock_dapm_widget ; 
 int /*<<< orphan*/ * atlas6_output_driver_dapm_widgets ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  prima2_codec_clock_dapm_widget ; 
 int /*<<< orphan*/ * prima2_output_driver_dapm_widgets ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ *,int) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * volume_controls_atlas6 ; 
 int /*<<< orphan*/ * volume_controls_prima2 ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC4(component);

	FUNC2(component->dev);

	if (FUNC1(component->dev->of_node, "sirf,prima2-audio-codec")) {
		FUNC5(dapm,
			prima2_output_driver_dapm_widgets,
			FUNC0(prima2_output_driver_dapm_widgets));
		FUNC5(dapm,
			&prima2_codec_clock_dapm_widget, 1);
		return FUNC3(component,
			volume_controls_prima2,
			FUNC0(volume_controls_prima2));
	}
	if (FUNC1(component->dev->of_node, "sirf,atlas6-audio-codec")) {
		FUNC5(dapm,
			atlas6_output_driver_dapm_widgets,
			FUNC0(atlas6_output_driver_dapm_widgets));
		FUNC5(dapm,
			&atlas6_codec_clock_dapm_widget, 1);
		return FUNC3(component,
			volume_controls_atlas6,
			FUNC0(volume_controls_atlas6));
	}

	return -EINVAL;
}