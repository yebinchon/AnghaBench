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
struct twl4030_priv {int apll_enabled; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_AUDIO_RES_APLL ; 
 struct twl4030_priv* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component, int enable)
{
	struct twl4030_priv *twl4030 = FUNC0(component);

	if (enable) {
		twl4030->apll_enabled++;
		if (twl4030->apll_enabled == 1)
			FUNC2(
							TWL4030_AUDIO_RES_APLL);
	} else {
		twl4030->apll_enabled--;
		if (!twl4030->apll_enabled)
			FUNC1(
							TWL4030_AUDIO_RES_APLL);
	}
}