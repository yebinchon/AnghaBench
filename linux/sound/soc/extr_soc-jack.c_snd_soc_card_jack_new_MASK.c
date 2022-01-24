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
struct snd_soc_jack_pin {int dummy; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack; int /*<<< orphan*/  notifier; int /*<<< orphan*/  jack_zones; int /*<<< orphan*/  pins; struct snd_soc_card* card; int /*<<< orphan*/  mutex; } ;
struct snd_soc_card {int /*<<< orphan*/  snd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (struct snd_soc_jack*,unsigned int,struct snd_soc_jack_pin*) ; 

int FUNC5(struct snd_soc_card *card, const char *id, int type,
	struct snd_soc_jack *jack, struct snd_soc_jack_pin *pins,
	unsigned int num_pins)
{
	int ret;

	FUNC2(&jack->mutex);
	jack->card = card;
	FUNC1(&jack->pins);
	FUNC1(&jack->jack_zones);
	FUNC0(&jack->notifier);

	ret = FUNC3(card->snd_card, id, type, &jack->jack, false, false);
	if (ret)
		return ret;

	if (num_pins)
		return FUNC4(jack, num_pins, pins);

	return 0;
}