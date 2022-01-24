#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uniphier_aio_sub {int /*<<< orphan*/  vol; struct uniphier_aio_spec const* spec; int /*<<< orphan*/ * swm; } ;
struct uniphier_aio_spec {int /*<<< orphan*/  swm; } ;
struct uniphier_aio {TYPE_1__* chip; struct uniphier_aio_sub* sub; } ;
struct snd_soc_dai {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int active; } ;

/* Variables and functions */
 int FUNC0 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  AUD_VOL_INIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 struct uniphier_aio_spec* FUNC3 (struct uniphier_aio*,int /*<<< orphan*/ ,int) ; 
 struct uniphier_aio* FUNC4 (struct snd_soc_dai*) ; 

int FUNC5(struct snd_soc_dai *dai)
{
	struct uniphier_aio *aio = FUNC4(dai);
	int i;

	for (i = 0; i < FUNC0(aio->sub); i++) {
		struct uniphier_aio_sub *sub = &aio->sub[i];
		const struct uniphier_aio_spec *spec;

		spec = FUNC3(aio, dai->name, i);
		if (!spec)
			continue;

		sub->swm = &spec->swm;
		sub->spec = spec;

		sub->vol = AUD_VOL_INIT;
	}

	FUNC2(aio->chip, true);
	FUNC1(aio->chip);
	aio->chip->active = 1;

	return 0;
}