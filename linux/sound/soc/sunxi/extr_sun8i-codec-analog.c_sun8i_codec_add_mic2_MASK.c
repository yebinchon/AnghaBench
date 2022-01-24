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
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun8i_codec_mic2_controls ; 
 int /*<<< orphan*/  sun8i_codec_mic2_routes ; 
 int /*<<< orphan*/  sun8i_codec_mic2_widgets ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *cmpnt)
{
	struct snd_soc_dapm_context *dapm = FUNC3(cmpnt);
	struct device *dev = cmpnt->dev;
	int ret;

	ret = FUNC2(cmpnt,
					     sun8i_codec_mic2_controls,
					     FUNC0(sun8i_codec_mic2_controls));
	if (ret) {
		FUNC1(dev, "Failed to add MIC2 controls: %d\n", ret);
		return ret;
	}

	ret = FUNC5(dapm, sun8i_codec_mic2_widgets,
					FUNC0(sun8i_codec_mic2_widgets));
	if (ret) {
		FUNC1(dev, "Failed to add MIC2 DAPM widgets: %d\n", ret);
		return ret;
	}

	ret = FUNC4(dapm, sun8i_codec_mic2_routes,
				      FUNC0(sun8i_codec_mic2_routes));
	if (ret) {
		FUNC1(dev, "Failed to add MIC2 DAPM routes: %d\n", ret);
		return ret;
	}

	return 0;
}