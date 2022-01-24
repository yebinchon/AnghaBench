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
struct sun8i_codec_analog_quirks {int /*<<< orphan*/  has_linein; int /*<<< orphan*/  has_mic2; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun8i_codec_mixer_routes ; 
 int /*<<< orphan*/  sun8i_codec_mixer_widgets ; 
 int /*<<< orphan*/  sun8i_v3s_codec_mixer_widgets ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *cmpnt,
					const struct sun8i_codec_analog_quirks *quirks)
{
	struct snd_soc_dapm_context *dapm = FUNC2(cmpnt);
	struct device *dev = cmpnt->dev;
	int ret;

	if (!quirks->has_mic2 && !quirks->has_linein) {
		/*
		 * Apply the special widget set which has uses a control
		 * without MIC2 and Line In, for SoCs without these.
		 * TODO: not all special cases are supported now, this case
		 * is present because it's the case of V3s.
		 */
		ret = FUNC4(dapm,
						sun8i_v3s_codec_mixer_widgets,
						FUNC0(sun8i_v3s_codec_mixer_widgets));
		if (ret) {
			FUNC1(dev, "Failed to add V3s Mixer DAPM widgets: %d\n", ret);
			return ret;
		}
	} else {
		/* Apply the generic mixer widget set. */
		ret = FUNC4(dapm,
						sun8i_codec_mixer_widgets,
						FUNC0(sun8i_codec_mixer_widgets));
		if (ret) {
			FUNC1(dev, "Failed to add Mixer DAPM widgets: %d\n", ret);
			return ret;
		}
	}

	ret = FUNC3(dapm, sun8i_codec_mixer_routes,
				      FUNC0(sun8i_codec_mixer_routes));
	if (ret) {
		FUNC1(dev, "Failed to add Mixer DAPM routes: %d\n", ret);
		return ret;
	}

	return 0;
}