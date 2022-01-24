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
struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  smartq_jack ; 
 int /*<<< orphan*/  smartq_jack_gpios ; 
 int /*<<< orphan*/  smartq_jack_pins ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_dapm_context *dapm = &rtd->card->dapm;
	int err = 0;

	/* set endpoints to not connected */
	FUNC2(dapm, "LINPUT1");
	FUNC2(dapm, "RINPUT1");
	FUNC2(dapm, "OUT3");
	FUNC2(dapm, "ROUT1");

	/* Headphone jack detection */
	err = FUNC1(rtd->card, "Headphone Jack",
				    SND_JACK_HEADPHONE, &smartq_jack,
				    smartq_jack_pins,
				    FUNC0(smartq_jack_pins));
	if (err)
		return err;

	err = FUNC3(&smartq_jack,
				     FUNC0(smartq_jack_gpios),
				     smartq_jack_gpios);

	return err;
}