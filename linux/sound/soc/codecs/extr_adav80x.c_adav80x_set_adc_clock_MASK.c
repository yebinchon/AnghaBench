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
struct snd_soc_component {int dummy; } ;
struct adav80x {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAV80X_ADC_CTRL1 ; 
 unsigned int ADAV80X_ADC_CTRL1_MODULATOR_128FS ; 
 unsigned int ADAV80X_ADC_CTRL1_MODULATOR_64FS ; 
 int /*<<< orphan*/  ADAV80X_ADC_CTRL1_MODULATOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct adav80x* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component,
		unsigned int sample_rate)
{
	struct adav80x *adav80x = FUNC1(component);
	unsigned int val;

	if (sample_rate <= 48000)
		val = ADAV80X_ADC_CTRL1_MODULATOR_128FS;
	else
		val = ADAV80X_ADC_CTRL1_MODULATOR_64FS;

	FUNC0(adav80x->regmap, ADAV80X_ADC_CTRL1,
		ADAV80X_ADC_CTRL1_MODULATOR_MASK, val);

	return 0;
}