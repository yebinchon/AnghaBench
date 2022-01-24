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
struct uniphier_aio_chip {struct uniphier_aio* aios; } ;
struct uniphier_aio {int dummy; } ;
struct snd_soc_dai {size_t id; } ;

/* Variables and functions */
 struct uniphier_aio_chip* FUNC0 (struct snd_soc_dai*) ; 

__attribute__((used)) static inline struct uniphier_aio *FUNC1(struct snd_soc_dai *dai)
{
	struct uniphier_aio_chip *chip = FUNC0(dai);

	return &chip->aios[dai->id];
}