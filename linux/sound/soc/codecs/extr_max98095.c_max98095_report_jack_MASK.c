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
struct snd_soc_component {int dummy; } ;
struct max98095_priv {scalar_t__ headphone_jack; scalar_t__ mic_jack; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  M98095_007_JACK_AUTO_STS ; 
 unsigned int M98095_DDONE ; 
 unsigned int M98095_HP_IN ; 
 unsigned int M98095_LO_IN ; 
 unsigned int M98095_MIC_IN ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_HEADSET ; 
 int SND_JACK_MICROPHONE ; 
 struct max98095_priv* FUNC0 (struct snd_soc_component*) ; 
 unsigned int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct snd_soc_component *component = data;
	struct max98095_priv *max98095 = FUNC0(component);
	unsigned int value;
	int hp_report = 0;
	int mic_report = 0;

	/* Read the Jack Status Register */
	value = FUNC1(component, M98095_007_JACK_AUTO_STS);

	/* If ddone is not set, then detection isn't finished yet */
	if ((value & M98095_DDONE) == 0)
		return IRQ_NONE;

	/* if hp, check its bit, and if set, clear it */
	if ((value & M98095_HP_IN || value & M98095_LO_IN) &&
		max98095->headphone_jack)
		hp_report |= SND_JACK_HEADPHONE;

	/* if mic, check its bit, and if set, clear it */
	if ((value & M98095_MIC_IN) && max98095->mic_jack)
		mic_report |= SND_JACK_MICROPHONE;

	if (max98095->headphone_jack == max98095->mic_jack) {
		FUNC2(max98095->headphone_jack,
					hp_report | mic_report,
					SND_JACK_HEADSET);
	} else {
		if (max98095->headphone_jack)
			FUNC2(max98095->headphone_jack,
					hp_report, SND_JACK_HEADPHONE);
		if (max98095->mic_jack)
			FUNC2(max98095->mic_jack,
					mic_report, SND_JACK_MICROPHONE);
	}

	return IRQ_HANDLED;
}