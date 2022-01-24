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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct nau8810 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int NAU8810_CLKM_MASK ; 
 int /*<<< orphan*/  NAU8810_REG_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct nau8810* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *source,
			 struct snd_soc_dapm_widget *sink)
{
	struct snd_soc_component *component = FUNC2(source->dapm);
	struct nau8810 *nau8810 = FUNC1(component);
	unsigned int value;

	FUNC0(nau8810->regmap, NAU8810_REG_CLOCK, &value);
	return (value & NAU8810_CLKM_MASK);
}