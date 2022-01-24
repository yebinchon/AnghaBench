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
struct input_dev {int dummy; } ;
struct cs42l52_private {int beep_rate; int /*<<< orphan*/  beep_work; } ;

/* Variables and functions */
#define  SND_BELL 129 
#define  SND_TONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct snd_soc_component* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cs42l52_private* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, unsigned int type,
			     unsigned int code, int hz)
{
	struct snd_soc_component *component = FUNC1(dev);
	struct cs42l52_private *cs42l52 = FUNC3(component);

	FUNC0(component->dev, "Beep event %x %x\n", code, hz);

	switch (code) {
	case SND_BELL:
		if (hz)
			hz = 261;
	case SND_TONE:
		break;
	default:
		return -1;
	}

	/* Kick the beep from a workqueue */
	cs42l52->beep_rate = hz;
	FUNC2(&cs42l52->beep_work);
	return 0;
}