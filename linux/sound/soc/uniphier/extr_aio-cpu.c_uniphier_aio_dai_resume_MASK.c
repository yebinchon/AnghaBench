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
struct uniphier_aio_sub {int /*<<< orphan*/  setting; int /*<<< orphan*/  substream; int /*<<< orphan*/  spec; } ;
struct uniphier_aio {TYPE_1__* chip; struct uniphier_aio_sub* sub; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  clk; int /*<<< orphan*/  num_wup_aios; int /*<<< orphan*/  rst; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int FUNC0 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC4 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC5 (struct uniphier_aio_sub*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct uniphier_aio* FUNC10 (struct snd_soc_dai*) ; 

int FUNC11(struct snd_soc_dai *dai)
{
	struct uniphier_aio *aio = FUNC10(dai);
	int ret, i;

	if (!aio->chip->active)
		return 0;

	if (!aio->chip->num_wup_aios) {
		ret = FUNC7(aio->chip->clk);
		if (ret)
			return ret;

		ret = FUNC9(aio->chip->rst);
		if (ret)
			goto err_out_clock;
	}

	FUNC2(aio->chip, true);
	FUNC1(aio->chip);

	for (i = 0; i < FUNC0(aio->sub); i++) {
		struct uniphier_aio_sub *sub = &aio->sub[i];

		if (!sub->spec || !sub->substream)
			continue;

		ret = FUNC3(sub);
		if (ret)
			goto err_out_reset;

		if (!sub->setting)
			continue;

		FUNC4(sub);
		FUNC5(sub);
	}
	aio->chip->num_wup_aios++;

	return 0;

err_out_reset:
	if (!aio->chip->num_wup_aios)
		FUNC8(aio->chip->rst);
err_out_clock:
	if (!aio->chip->num_wup_aios)
		FUNC6(aio->chip->clk);

	return ret;
}