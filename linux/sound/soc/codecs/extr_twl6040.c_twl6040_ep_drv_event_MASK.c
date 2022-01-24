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
struct twl6040_data {int hs_power_mode_locked; int hs_power_mode; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct twl6040_data* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
			struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC4(w->dapm);
	struct twl6040_data *priv = FUNC3(component);
	int ret = 0;

	if (FUNC0(event)) {
		/* Earphone doesn't support low power mode */
		priv->hs_power_mode_locked = 1;
		ret = FUNC1(component, 1);
	} else {
		priv->hs_power_mode_locked = 0;
		ret = FUNC1(component, priv->hs_power_mode);
	}

	FUNC2(1);

	return ret;
}