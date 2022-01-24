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
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct ad193x_priv {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD193X_DAC_CTRL2 ; 
 int /*<<< orphan*/  AD193X_DAC_MASTER_MUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad193x_priv* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct ad193x_priv *ad193x = FUNC1(dai->component);

	if (mute)
		FUNC0(ad193x->regmap, AD193X_DAC_CTRL2,
				    AD193X_DAC_MASTER_MUTE,
				    AD193X_DAC_MASTER_MUTE);
	else
		FUNC0(ad193x->regmap, AD193X_DAC_CTRL2,
				    AD193X_DAC_MASTER_MUTE, 0);

	return 0;
}