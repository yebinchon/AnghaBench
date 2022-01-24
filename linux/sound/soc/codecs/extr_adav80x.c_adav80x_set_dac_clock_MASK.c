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
 int /*<<< orphan*/  ADAV80X_DAC_CTRL2 ; 
 unsigned int ADAV80X_DAC_CTRL2_DIV1 ; 
 unsigned int ADAV80X_DAC_CTRL2_DIV2 ; 
 int ADAV80X_DAC_CTRL2_DIV_MASK ; 
 unsigned int ADAV80X_DAC_CTRL2_INTERPOL_128FS ; 
 unsigned int ADAV80X_DAC_CTRL2_INTERPOL_256FS ; 
 int ADAV80X_DAC_CTRL2_INTERPOL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct adav80x* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component,
		unsigned int sample_rate)
{
	struct adav80x *adav80x = FUNC1(component);
	unsigned int val;

	if (sample_rate <= 48000)
		val = ADAV80X_DAC_CTRL2_DIV1 | ADAV80X_DAC_CTRL2_INTERPOL_256FS;
	else
		val = ADAV80X_DAC_CTRL2_DIV2 | ADAV80X_DAC_CTRL2_INTERPOL_128FS;

	FUNC0(adav80x->regmap, ADAV80X_DAC_CTRL2,
		ADAV80X_DAC_CTRL2_DIV_MASK | ADAV80X_DAC_CTRL2_INTERPOL_MASK,
		val);

	return 0;
}