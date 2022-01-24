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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct ak4641_priv {scalar_t__ playback_fs; scalar_t__ deemph; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK4641_DAC ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__* deemph_settings ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct ak4641_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct ak4641_priv *ak4641 = FUNC3(component);
	int i, best = 0;

	for (i = 0 ; i < FUNC0(deemph_settings); i++) {
		/* if deemphasis is on, select the nearest available rate */
		if (ak4641->deemph && deemph_settings[i] != 0 &&
		    FUNC1(deemph_settings[i] - ak4641->playback_fs) <
		    FUNC1(deemph_settings[best] - ak4641->playback_fs))
			best = i;

		if (!ak4641->deemph && deemph_settings[i] == 0)
			best = i;
	}

	FUNC2(component->dev, "Set deemphasis %d\n", best);

	return FUNC4(component, AK4641_DAC, 0x3, best);
}