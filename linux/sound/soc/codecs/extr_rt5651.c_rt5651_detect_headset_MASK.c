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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int JACK_DETECT_COUNT ; 
 int JACK_DETECT_MAXCOUNT ; 
 int /*<<< orphan*/  JACK_SETTLE_TIME ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 
 scalar_t__ FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	int i, headset_count = 0, headphone_count = 0;

	/*
	 * We get the insertion event before the jack is fully inserted at which
	 * point the second ring on a TRRS connector may short the 2nd ring and
	 * sleeve contacts, also the overcurrent detection is not entirely
	 * reliable. So we try several times with a wait in between until we
	 * detect the same type JACK_DETECT_COUNT times in a row.
	 */
	for (i = 0; i < JACK_DETECT_MAXCOUNT; i++) {
		/* Clear any previous over-current status flag */
		FUNC3(component);

		FUNC2(JACK_SETTLE_TIME);

		/* Check the jack is still connected before checking ovcd */
		if (!FUNC4(component))
			return 0;

		if (FUNC5(component)) {
			/*
			 * Over current detected, there is a short between the
			 * 2nd ring contact and the ground, so a TRS connector
			 * without a mic contact and thus plain headphones.
			 */
			FUNC0(component->dev, "mic-gnd shorted\n");
			headset_count = 0;
			headphone_count++;
			if (headphone_count == JACK_DETECT_COUNT)
				return SND_JACK_HEADPHONE;
		} else {
			FUNC0(component->dev, "mic-gnd open\n");
			headphone_count = 0;
			headset_count++;
			if (headset_count == JACK_DETECT_COUNT)
				return SND_JACK_HEADSET;
		}
	}

	FUNC1(component->dev, "Error detecting headset vs headphones, bad contact?, assuming headphones\n");
	return SND_JACK_HEADPHONE;
}