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
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct regmap {int dummy; } ;
struct nau8825 {struct snd_soc_jack* jack; struct regmap* regmap; } ;

/* Variables and functions */
 int NAU8825_HSD_AUTO_MODE ; 
 int /*<<< orphan*/  NAU8825_REG_HSD_CTRL ; 
 int NAU8825_SPKR_DWN1L ; 
 int NAU8825_SPKR_DWN1R ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 struct nau8825* FUNC1 (struct snd_soc_component*) ; 

int FUNC2(struct snd_soc_component *component,
				struct snd_soc_jack *jack)
{
	struct nau8825 *nau8825 = FUNC1(component);
	struct regmap *regmap = nau8825->regmap;

	nau8825->jack = jack;

	/* Ground HP Outputs[1:0], needed for headset auto detection
	 * Enable Automatic Mic/Gnd switching reading on insert interrupt[6]
	 */
	FUNC0(regmap, NAU8825_REG_HSD_CTRL,
		NAU8825_HSD_AUTO_MODE | NAU8825_SPKR_DWN1R | NAU8825_SPKR_DWN1L,
		NAU8825_HSD_AUTO_MODE | NAU8825_SPKR_DWN1R | NAU8825_SPKR_DWN1L);

	return 0;
}