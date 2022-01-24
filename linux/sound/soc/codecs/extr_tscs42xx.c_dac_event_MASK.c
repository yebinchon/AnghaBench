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
struct tscs42xx {int coeff_ram_synced; int /*<<< orphan*/  coeff_ram_lock; int /*<<< orphan*/  coeff_ram; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COEFF_RAM_COEFF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tscs42xx* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
		     struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
		FUNC3(w->dapm);
	struct tscs42xx *tscs42xx = FUNC2(component);
	int ret;

	FUNC0(&tscs42xx->coeff_ram_lock);

	if (!tscs42xx->coeff_ram_synced) {
		ret = FUNC4(component, tscs42xx->coeff_ram, 0x00,
			COEFF_RAM_COEFF_COUNT);
		if (ret < 0)
			goto exit;
		tscs42xx->coeff_ram_synced = true;
	}

	ret = 0;
exit:
	FUNC1(&tscs42xx->coeff_ram_lock);

	return ret;
}