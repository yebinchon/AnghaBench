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
struct TYPE_2__ {scalar_t__ active; } ;

/* Variables and functions */
 struct uniphier_aio* FUNC0 (struct snd_soc_dai*) ; 

int FUNC1(struct snd_soc_dai *dai)
{
	struct uniphier_aio *aio = FUNC0(dai);

	aio->chip->active = 0;

	return 0;
}