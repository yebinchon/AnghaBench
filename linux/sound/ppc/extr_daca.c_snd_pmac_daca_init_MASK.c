#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pmac {int /*<<< orphan*/  resume; TYPE_2__* card; int /*<<< orphan*/  mixer_free; struct pmac_daca* mixer_data; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  init_client; int /*<<< orphan*/  addr; } ;
struct pmac_daca {int amp_on; TYPE_1__ i2c; } ;
struct TYPE_4__ {int /*<<< orphan*/  mixername; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DACA_I2C_ADDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  daca_cleanup ; 
 int /*<<< orphan*/  daca_init_client ; 
 int /*<<< orphan*/ * daca_mixers ; 
 int /*<<< orphan*/  daca_resume ; 
 struct pmac_daca* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct snd_pmac*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

int FUNC7(struct snd_pmac *chip)
{
	int i, err;
	struct pmac_daca *mix;

	FUNC2("i2c-powermac");

	mix = FUNC1(sizeof(*mix), GFP_KERNEL);
	if (! mix)
		return -ENOMEM;
	chip->mixer_data = mix;
	chip->mixer_free = daca_cleanup;
	mix->amp_on = 1; /* default on */

	mix->i2c.addr = DACA_I2C_ADDR;
	mix->i2c.init_client = daca_init_client;
	mix->i2c.name = "DACA";
	if ((err = FUNC5(&mix->i2c)) < 0)
		return err;

	/*
	 * build mixers
	 */
	FUNC6(chip->card->mixername, "PowerMac DACA");

	for (i = 0; i < FUNC0(daca_mixers); i++) {
		if ((err = FUNC3(chip->card, FUNC4(&daca_mixers[i], chip))) < 0)
			return err;
	}

#ifdef CONFIG_PM
	chip->resume = daca_resume;
#endif

	return 0;
}