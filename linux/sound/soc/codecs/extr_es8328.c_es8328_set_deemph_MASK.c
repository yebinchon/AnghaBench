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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct es8328_priv {scalar_t__ playback_fs; scalar_t__ deemph; } ;
struct TYPE_3__ {int val; scalar_t__ rate; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ES8328_DACCONTROL6 ; 
 int /*<<< orphan*/  ES8328_DACCONTROL6_DEEMPH_MASK ; 
 int ES8328_DACCONTROL6_DEEMPH_OFF ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_1__* deemph_settings ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct es8328_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct es8328_priv *es8328 = FUNC3(component);
	int val, i, best;

	/*
	 * If we're using deemphasis select the nearest available sample
	 * rate.
	 */
	if (es8328->deemph) {
		best = 0;
		for (i = 1; i < FUNC0(deemph_settings); i++) {
			if (FUNC1(deemph_settings[i].rate - es8328->playback_fs) <
			    FUNC1(deemph_settings[best].rate - es8328->playback_fs))
				best = i;
		}

		val = deemph_settings[best].val;
	} else {
		val = ES8328_DACCONTROL6_DEEMPH_OFF;
	}

	FUNC2(component->dev, "Set deemphasis %d\n", val);

	return FUNC4(component, ES8328_DACCONTROL6,
			ES8328_DACCONTROL6_DEEMPH_MASK, val);
}