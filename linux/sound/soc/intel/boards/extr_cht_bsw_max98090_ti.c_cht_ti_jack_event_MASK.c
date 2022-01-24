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
struct snd_soc_jack {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;

/* Variables and functions */
 unsigned long SND_JACK_MICROPHONE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
		unsigned long event, void *data)
{
	struct snd_soc_jack *jack = (struct snd_soc_jack *)data;
	struct snd_soc_dapm_context *dapm = &jack->card->dapm;

	if (event & SND_JACK_MICROPHONE) {
		FUNC1(dapm, "SHDN");
		FUNC1(dapm, "MICBIAS");
		FUNC2(dapm);
	} else {
		FUNC0(dapm, "MICBIAS");
		FUNC0(dapm, "SHDN");
		FUNC2(dapm);
	}

	return 0;
}