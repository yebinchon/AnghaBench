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
struct snd_soc_component {int dummy; } ;
struct alc5632_priv {int sysclk; } ;
struct TYPE_3__ {int fs; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* coeff_div ; 
 struct alc5632_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component, int rate)
{
	struct alc5632_priv *alc5632 = FUNC1(component);
	int i;

	for (i = 0; i < FUNC0(coeff_div); i++) {
		if (coeff_div[i].fs * rate == alc5632->sysclk)
			return i;
	}
	return -EINVAL;
}