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
struct uniphier_aio {TYPE_1__* chip; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; int /*<<< orphan*/  num_wup_aios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uniphier_aio* FUNC2 (struct snd_soc_dai*) ; 

int FUNC3(struct snd_soc_dai *dai)
{
	struct uniphier_aio *aio = FUNC2(dai);

	aio->chip->num_wup_aios--;
	if (!aio->chip->num_wup_aios) {
		FUNC1(aio->chip->rst);
		FUNC0(aio->chip->clk);
	}

	return 0;
}