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
struct sun8i_codec_analog_quirks {scalar_t__ has_mic2; scalar_t__ has_mbias; scalar_t__ has_lineout; scalar_t__ has_linein; scalar_t__ has_hmic; scalar_t__ has_headphone; } ;
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sun8i_codec_analog_quirks* FUNC0 (struct device*) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,struct sun8i_codec_analog_quirks const*) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *cmpnt)
{
	struct device *dev = cmpnt->dev;
	const struct sun8i_codec_analog_quirks *quirks;
	int ret;

	/*
	 * This would never return NULL unless someone directly registers a
	 * platform device matching this driver's name, without specifying a
	 * device tree node.
	 */
	quirks = FUNC0(dev);

	/* Add controls, widgets, and routes for individual features */
	ret = FUNC7(cmpnt, quirks);
	if (ret)
		return ret;

	if (quirks->has_headphone) {
		ret = FUNC1(cmpnt);
		if (ret)
			return ret;
	}

	if (quirks->has_hmic) {
		ret = FUNC2(cmpnt);
		if (ret)
			return ret;
	}

	if (quirks->has_linein) {
		ret = FUNC3(cmpnt);
		if (ret)
			return ret;
	}

	if (quirks->has_lineout) {
		ret = FUNC4(cmpnt);
		if (ret)
			return ret;
	}

	if (quirks->has_mbias) {
		ret = FUNC5(cmpnt);
		if (ret)
			return ret;
	}

	if (quirks->has_mic2) {
		ret = FUNC6(cmpnt);
		if (ret)
			return ret;
	}

	return 0;
}