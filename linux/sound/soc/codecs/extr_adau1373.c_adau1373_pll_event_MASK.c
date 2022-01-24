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
struct snd_soc_dapm_widget {char* name; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct adau1373 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int ADAU1373_PLL_CTRL6_PLL_EN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct adau1373* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC5(w->dapm);
	struct adau1373 *adau1373 = FUNC4(component);
	unsigned int pll_id = w->name[3] - '1';
	unsigned int val;

	if (FUNC1(event))
		val = ADAU1373_PLL_CTRL6_PLL_EN;
	else
		val = 0;

	FUNC3(adau1373->regmap, FUNC0(pll_id),
		ADAU1373_PLL_CTRL6_PLL_EN, val);

	if (FUNC1(event))
		FUNC2(5);

	return 0;
}