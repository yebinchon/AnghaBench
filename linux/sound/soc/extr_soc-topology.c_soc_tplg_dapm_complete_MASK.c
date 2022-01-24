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
struct soc_tplg {int /*<<< orphan*/  dev; TYPE_1__* comp; } ;
struct snd_soc_card {int /*<<< orphan*/  instantiated; } ;
struct TYPE_2__ {struct snd_soc_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC3(struct soc_tplg *tplg)
{
	struct snd_soc_card *card = tplg->comp->card;
	int ret;

	/* Card might not have been registered at this point.
	 * If so, just return success.
	*/
	if (!card || !card->instantiated) {
		FUNC1(tplg->dev, "ASoC: Parent card not yet available,"
			" widget card binding deferred\n");
		return 0;
	}

	ret = FUNC2(card);
	if (ret < 0)
		FUNC0(tplg->dev, "ASoC: failed to create new widgets %d\n",
			ret);

	return 0;
}